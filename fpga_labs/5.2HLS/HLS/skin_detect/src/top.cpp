#include "top.h"
#include <string.h>
#include <iostream>
using namespace std;

void hls::hls_skin_dection(RGB_IMAGE& src, RGB_IMAGE& dst,int rows,int cols,
int y_lower,int y_upper,int cb_lower,int cb_upper,int cr_lower,int cr_upper)
{
LOOp_ROWS:for(int row = 0; row < rows ; row++)
{
LOOp_COLS:for(int col = 0; col < cols; col++)
{
 //变量定义
 RGB_PIXEL src_data;
 RGB_PIXEL pix;
 RGB_PIXEL dst_data;
 bool skin_region;
 if(row < rows && col < cols) {
 src >> src_data;
 }
 //获取RGB通道数据
 uchar B = src_data.val[0];
 uchar G = src_data.val[1];
 uchar R = src_data.val[2];
 //RGB-->YCbCr颜色空间转换
 uchar y = (76 * R + 150 * G + 29 * B) >> 8;
 uchar cb = ((128*B -43*R - 85*G)>>8) + 128 ;
 uchar cr = ((128*R -107*G - 21 * B)>>8)+ 128 ;
 //肤色区域判定
  if (y > y_lower && y < y_upper && cb > cb_lower && cb <
 cb_upper && cr > cr_lower && cr < cr_upper)
  skin_region = 1;
  else
  skin_region = 0;
  uchar temp0= (skin_region == 1)? (uchar)255: B;
  uchar temp1= (skin_region == 1)? (uchar)255: G;
  uchar temp2= (skin_region == 1)? (uchar)255: R;
  dst_data.val[0] = temp0;
  dst_data.val[1] = temp1;
  dst_data.val[2] = temp2;
 dst << dst_data;
  } } }
 void ImgProcess_Top(AXI_STREAM& input, AXI_STREAM& output,int rows, int cols,
  int y_lower,int y_upper,int cb_lower,int cb_upper,int cr_lower,int cr_upper)
 {
 RGB_IMAGE img_0(rows, cols);
 RGB_IMAGE img_1(rows, cols);
 #pragma HLS dataflow
 hls::AXIvideo2Mat(input,img_0);
 hls::hls_skin_dection(img_0,img_1,rows,cols,y_lower,y_upper,cb_lower,cb_upper,cr_lower,cr_upper);
 hls::Mat2AXIvideo(img_1, output);
 }
