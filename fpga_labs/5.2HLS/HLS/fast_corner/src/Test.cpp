#include "hls_opencv.h"
#include "top.h"
using namespace cv;
int main (int argc, char** argv) {
 IplImage* src = cvLoadImage(INPUT_IMAGE);
 IplImage* dst = cvCreateImage(cvGetSize(src), src->depth,
src->nChannels);
 cvShowImage("hls_src", src);
//HLSÊÓÆµ¿â´¦Àí
 AXI_STREAM src_axi, dst_axi;
 IplImage2AXIvideo(src, src_axi);
 hls_fast_corner(src_axi, dst_axi, src->height, src->width, 20);
 AXIvideo2IplImage(dst_axi, dst);
 cvShowImage("hls_dst", dst);
cvSaveImage(OUTPUT_IMAGE,dst);
waitKey(0);
 return 0;
}
