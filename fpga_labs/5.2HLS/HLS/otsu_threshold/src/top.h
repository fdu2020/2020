#ifndef _TOP_H_
#define _TOP_H_
#include "hls_video.h"
#include "ap_int.h"
#include <math.h>
#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080
#define INPUT_IMAGE "car.bmp"
//#define INPUT_IMAGE "test_1080p.bmp"
#define OUTPUT_IMAGE "result_1080p.bmp"
#define OUTPUT_IMAGE_GOLDEN "result_1080p_golden.bmp"
// typedef video library core structures
typedef hls::stream<ap_axiu<32,1,1,1> > AXI_STREAM_IN;
typedef hls::stream<ap_axiu<32,1,1,1> >
AXI_STREAM_OUT;
typedef hls::Scalar<3, unsigned char> RGB_PIXEL;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> GRAY_IMAGE;
typedef hls::Scalar<1, unsigned char> GRAY_PIXEL;
typedef unsigned char uchar;
typedef ap_uint<12> int12_t;//自定�?12位无符号整型
//顶层综合函数
void hls_counter_color(AXI_STREAM_IN& src_axi, AXI_STREAM_OUT&
dst_axi, int rows, int cols);
#endif
