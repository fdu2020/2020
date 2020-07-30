#include "iostream"
#include "hls_opencv.h"
#include "top.h"
#include "opencv_top.h"
#include <time.h>

using namespace cv;
using namespace std;

int main()
{
  //��ȡͼ������
  IplImage* src =cvLoadImage(INPUT_IMAGE,CV_LOAD_IMAGE_GRAYSCALE);
  //��ȡ����ͼƬ��ֱ��תΪ�Ҷ�ͼ��
  IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
  cvShowImage("src", src);
  //ʹ��HLS����д���
  AXI_STREAM src_axi, dst_axi;
  IplImage2AXIvideo(src, src_axi);
  hls_hough(src_axi, dst_axi, src->height, src->width);
  AXIvideo2IplImage(dst_axi, dst);
  cvShowImage("hls_dst", dst);
  //ʹ��OPENCV����д���
  //opencv_hough(src, dst);
  cvShowImage("cv_dst", dst);
  waitKey(0);
  //�ͷ��ڴ�
  //cvReleaseImage(&dst);
  return 0;
}
