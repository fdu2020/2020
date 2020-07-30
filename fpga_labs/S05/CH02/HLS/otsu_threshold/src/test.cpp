#include "top.h"
#include "hls_opencv.h"

using namespace std;
using namespace cv;
int main (int argc, char** argv)
{
//��ȡͼ������
IplImage* src = cvLoadImage(INPUT_IMAGE);
 IplImage* dst = cvCreateImage(cvGetSize(src), src->depth,src->nChannels);//src->nChannels

 //ʹ��HLS����д���
 AXI_STREAM_IN src_axi;
 AXI_STREAM_OUT dst_axi;
 IplImage2AXIvideo(src, src_axi);
 hls_counter_color(src_axi, dst_axi, src->height, src->width);
 AXIvideo2IplImage(dst_axi, dst);
 cvSaveImage(OUTPUT_IMAGE,dst);
 cvShowImage("src",src);
 cvShowImage("hls_dst", dst);
 waitKey(0);
 //�ͷ��ڴ�
 cvReleaseImage(&src);
 cvReleaseImage(&dst);
 return 0;
}
