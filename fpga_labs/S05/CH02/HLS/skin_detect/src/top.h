#ifndef _TOP_H_
#define _TOP_H_

#include "hls_video.h"
#include "math.h"

#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080

#define INPUT_IMAGE "test.jpg"
#define OUTPUT_IMAGE "result.jpg"

typedef hls::Scalar<3, unsigned char> RGB_PIXEL;
typedef unsigned char uchar;
typedef hls::stream<ap_axiu<32,1,1,1> > AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3> RGB_IMAGE;

template<typename T>
struct hls_Point
{
 T x;
 T y;
};

namespace hls
{
double hls_round(double x, int n);
void hls_skin_dection(RGB_IMAGE& src, RGB_IMAGE& dst,int rows,int cols,
int y_lower,int y_upper,int cb_lower,int cb_upper,int cr_lower,int cr_upper);
}

void ImgProcess_Top(AXI_STREAM& input, AXI_STREAM& output,int rows, int cols,
 int y_lower,int y_upper,int cb_lower,int cb_upper,int cr_lower,int cr_upper);

#endif
