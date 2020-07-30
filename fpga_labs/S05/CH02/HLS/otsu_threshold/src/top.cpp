#include "top.h"
#include "hls_math.h"
#define Simulation 0
#if Simulation
#include "iostream"
using namespace std;
#endif
namespace hls
{
template<int SRC_T, int DST_T,int ROW, int COL, int N>
void threshold(Mat<ROW, COL, SRC_T> &_src,Mat<ROW, COL,DST_T> &_dst,ap_uint<8> (&map)[N])
{
   const int NUM_STATES = 4; //必须为偶数
   Window<1,NUM_STATES,ap_uint<8> > addr_win;//声明1行4列，每个元素为无符号8bit的窗口
   //OSTU需要统计不同灰度值个数
   ap_uint<BitWidth<ROW*COL>::Value> hist_out[N];//以行列乘积最大位宽为边界，如ROW*COL = 1920*1080 = 2073600 ，
   //尾位宽存储需21位，则ap_uint<BitWidth<ROW*COL>::Value> 等同于ap_uint<21>
   Window<1,NUM_STATES,ap_uint<BitWidth<ROW*COL>::Value> >hist_win;
   ap_uint<BitWidth<ROW*COL>::Value> hist;
   ap_uint<8> addr;
   ap_uint<8> addr_last;
   ap_uint<BitWidth<ROW*COL>::Value> hist_last;
   ap_uint<8> addr_flag;
   ap_uint<BitWidth<ROW*COL>::Value> hist_flag;
   ap_uint<8> addr_w;
   ap_uint<BitWidth<ROW*COL>::Value> hist_w;
   ap_uint<8> threshold = 0;
   ap_uint<BitWidth<ROW*COL>::Value> tmp=0;
   float pixelPro[256];
   for(int i=0;i<NUM_STATES;i++)
     {
      #pragma HLS UNROLL
      addr_win(0,i)=i;//NUM_STATES 初始化不同的地址
      hist_win(0,i)=0;
     }
   for(int i=0;i<N;i++)
     {
      hist_out[i] = 0;
      pixelPro[i] = 0.0f;
     }
     //轮询统计原图像中不同灰度值的个数
     int cols=_src.cols;
     int rows=_src.rows;
     assert(rows <= ROW);
     assert(cols <= COL);
     loop_height: for(int i=0;i<rows;i++)
       {
         loop_width: for(int j=0;j<cols;j++)
          {
            #pragma HLS PIPELINE
            #pragma HLS LOOP_FLATTEN OFF
            #pragma HLS DEPENDENCE array inter false
            ap_uint<4> flag=NUM_STATES;
            HLS_TNAME(SRC_T) tempsrc=0;
            HLS_TNAME(DST_T) tempdst=0;
            _src.data_stream[0] >> tempsrc;
            tempdst = map[tempsrc];
            _dst.data_stream[0] << tempdst;
            for (int m=0; m<NUM_STATES; m++)
              {
               if (tempsrc==addr_win(0,m))
                {
            	 flag = m;
                 break;
                }
              }
            latency_region:{
             #pragma HLS latency min=0 max=1
             addr_last = addr_win(0,NUM_STATES-1);
             hist_last = hist_win(0,NUM_STATES-1)+1;

             for (int m=NUM_STATES-1; m>0; m--)
             {
            	 addr = addr_win(0,m-1);
            	 hist = hist_win(0,m-1);
              if (m == NUM_STATES/2)
              {
               addr_w = addr;
               if (m == flag+1)
               {
                hist_w = hist+1;
               }
               else
               {
                hist_w = hist;
               }
              }
              if (m==flag+1)
              {
            	  addr_flag = addr;
            	  hist_flag = hist+1;
            	  addr_win(0,m) = addr_flag;
            	  hist_win(0,m) = hist_flag;
              }
              else
              {
            	  addr_win(0,m) = addr;
            	  hist_win(0,m) = hist;
              }
             }
             if (flag==NUM_STATES)
             {
            	 hist_win(0,0) = hist_out[tempsrc]+1;
            	 addr_win(0,0) = tempsrc;
             }
             else if (flag==NUM_STATES-1)
             {
            	 addr_win(0,0) = addr_last;
            	 hist_win(0,0) = hist_last;
             }
             else if (flag>=NUM_STATES/2)
             {
            	 addr_win(0,0) = addr_flag;
            	 hist_win(0,0) = hist_flag;
             }
             else
             {
            	 addr_win(0,0) = addr_w;
            	 hist_win(0,0) = hist_w;
             }
             hist_out[addr_w] = hist_w;
            }
          }
       }
     for (int m=0; m<NUM_STATES/2; m++)
     {
    	 #pragma HLS PIPELINE
    	 hist_out[addr_win(0,m)]=hist_win(0,m);
     }
     //计算直方图映射表
     float scale = 255.0f/(cols*rows);
     ap_uint<BitWidth<ROW*COL>::Value> sum=0;
     loop_normalize: for(int i=0;i<N;i++)
     {
    	 #pragma HLS PIPELINE
    	 tmp = hist_out[i];
    	 pixelPro[i] = (float)(tmp)/(float)(cols*rows);
     }
     //经典ostu算法,得到前景和背景的分割
     //遍历灰度级[0,255],计算出方差最大的灰度值,为最佳阈值
     float w0, w1, u0tmp, u1tmp, u0, u1,deltaTmp, deltaMax = 0.0f;
     loop_forward:for(int i = 0; i < 256; i++)
     {
    	 #pragma HLS loop_flatten off
    	 w0 = w1 = u0tmp = u1tmp = u0 = u1 = deltaTmp = 0.0f;
    	 loop_front:for(int j = 0; j < i; j++)
    	 {
    		 #pragma HLS PIPELINE II=5
    		 w0 += pixelPro[j];
    		 u0tmp += (float)j * pixelPro[j];
    	 }
    	 loop_back:for(int j = i; j < 256; j++)
    	 {
    		 #pragma HLPELINE II=5
    		 u1tmp += (float)j * pixelPro[j];
    	 }
    	 w1 = 1 - w0;
    	 u0 = u0tmp / w0;
    	 u1 = u1tmp / w1;
    	 //计算类间方差
    	 deltaTmp = w0*w1*(u0-u1)*(u0-u1);
    	 //找出最大类间方差以及对应的阈值
    	 if(deltaTmp > deltaMax)
    	 {
    		 deltaMax = deltaTmp;
    		 threshold = i;
    	 }
     }
     #if Simulation
     cout << "The Threshold is " << (int)(threshold) << endl;
     #endif
     loop_map:for(int i=0;i<N;i++){
    	 #pragma HLS PIPELINE
    	 tmp = hist_out[i];
    	 sum+=tmp;
    	 ap_uint<8> val=sr_cast< ap_uint<8> > (sum*scale);
    	 #if Simulation
    	 cout << "The data is " << (int)(threshold) << endl;
    	 #endif
    	 ap_uint<8> data_val = (val > threshold) ? 255 : 0;
    	 map[i]=data_val;
     }
     map[0]=0;
}
static ap_uint<8> array_data[256];
template<int SRC_T, int DST_T,int ROW, int COL>
void ostu_threshold(Mat<ROW, COL, SRC_T> &_src,Mat<ROW, COL, DST_T> &_dst)
{
	#pragma HLS INLINE
	threshold(_src, _dst, array_data);
}
}
void hls_counter_color(AXI_STREAM_IN& INPUT_STREAM,AXI_STREAM_OUT& OUTPUT_STREAM, int rows, int cols)
{
	#pragma HLS INTERFACE axis port=INPUT_STREAM
	#pragma HLS INTERFACE axis port=OUTPUT_STREAM
	#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
	#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
	#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"
	#pragma HLS INTERFACE ap_stable port=rows
	#pragma HLS INTERFACE ap_stable port=cols

	RGB_IMAGE img_0(rows, cols);
	GRAY_IMAGE img_1(rows, cols);
	GRAY_IMAGE img_2(rows, cols);
	RGB_IMAGE img_3(rows, cols);

	#pragma HLS dataflow

	hls::AXIvideo2Mat(INPUT_STREAM, img_0);
	hls::CvtColor<HLS_RGB2GRAY>(img_0,img_1);
	hls::ostu_threshold(img_1,img_2);
	hls::CvtColor<HLS_GRAY2RGB>(img_2,img_3);//将灰度图像转换为RGB图像
	hls::Mat2AXIvideo(img_3,OUTPUT_STREAM);
}

