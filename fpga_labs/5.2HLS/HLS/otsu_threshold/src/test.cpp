#include "top.h"
#include "hls_opencv.h"

using namespace std;
using namespace cv;
int main (int argc, char** argv)
{
//获取图像数据
IplImage* src = cvLoadImage(INPUT_IMAGE);
 IplImage* dst = cvCreateImage(cvGetSize(src), src->depth,src->nChannels);//src->nChannels

 //使用HLS库进行处理
 AXI_STREAM_IN src_axi;
 AXI_STREAM_OUT dst_axi;
 IplImage2AXIvideo(src, src_axi);
 hls_counter_color(src_axi, dst_axi, src->height, src->width);
 AXIvideo2IplImage(dst_axi, dst);
 cvSaveImage(OUTPUT_IMAGE,dst);
 cvShowImage("src",src);
 cvShowImage("hls_dst", dst);
 waitKey(0);
 //释放内存
 cvReleaseImage(&src);
 cvReleaseImage(&dst);
 return 0;
}
