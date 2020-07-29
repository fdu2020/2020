#ifndef _TOP_H_
#define _TOP_H_
//#include "iostream"
#include "hls_video.h"
#include "math.h"
//maximum image size
#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080
//I/O Image Settings
#define INPUT_IMAGE "circle2.bmp"
#define OUTPUT_IMAGE "result.jpg"
#define OUTPUT_IMAGE_GOLDEN "result_golden.jpg"
//typedef video library core structures
typedef hls::stream<ap_axiu<32,1,1,1> > AXI_STREAM;
typedef hls::Scalar<3, unsigned char> RGB_PIXEL;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> GRAY_IMAGE;
typedef hls::Scalar<1, unsigned char> GRAY_PIXEL;
typedef unsigned char uchar;
//定义点的结构体
template<typename T>
struct hls_Point
{
 T x;
 T y;
};
//定义命名空间hls并进行函数声明
namespace hls
{
double hls_round(double x, int n);
void hls_hough_line(GRAY_IMAGE &src,GRAY_IMAGE &dst,int
rows,int cols);
}
//top level function for HW synthesis
void hls_hough(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows,
int cols);
#endif
