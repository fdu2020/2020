#include "iostream"
#include "hls_opencv.h"
#include "top.h"
#include "opencv_top.h"
#include <time.h>

using namespace cv;
using namespace std;

int main()
{
  //获取图像数据
  IplImage* src =cvLoadImage(INPUT_IMAGE,CV_LOAD_IMAGE_GRAYSCALE);
  //获取仿真图片并直接转为灰度图像
  IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
  cvShowImage("src", src);
  //使用HLS库进行处理
  AXI_STREAM src_axi, dst_axi;
  IplImage2AXIvideo(src, src_axi);
  hls_hough(src_axi, dst_axi, src->height, src->width);
  AXIvideo2IplImage(dst_axi, dst);
  cvShowImage("hls_dst", dst);
  //使用OPENCV库进行处理
  //opencv_hough(src, dst);
  cvShowImage("cv_dst", dst);
  waitKey(0);
  //释放内存
  //cvReleaseImage(&dst);
  return 0;
}
