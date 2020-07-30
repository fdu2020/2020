#include "hls_opencv.h"
#include "iostream"
#include <time.h>
#include "top.h"

using namespace std;
using namespace cv;
int main (int argc, char** argv)
{
//IplImage* src = cvLoadImage(INPUT_IMAGE);
IplImage* src = cvLoadImage("test.jpg");
//IplImage* src = cvLoadImage("test_img1.jpg");
IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
AXI_STREAM src_axi, dst_axi;
IplImage2AXIvideo(src, src_axi);
ImgProcess_Top(src_axi, dst_axi, src->height,
src->width,0,255,75,125,131,185);
AXIvideo2IplImage(dst_axi, dst);
cvShowImage("src",src);
cvShowImage("dst_hls",dst);
waitKey(0);
return 0;
}
