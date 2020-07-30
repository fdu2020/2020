#include <hls_opencv.h>
#include <iostream>

typedef hls::stream<ap_axiu<1024,1,1,1>> AXI_STREAM;
using namespace cv;

#define INPUT_IMAGE "test_1080p.bmp"
#define OUTPUT_IMAGE "result_1080p.bmp"
int main (int argc, char** argv)
{
//方法1 cvLoadImage函数加载图片
IplImage* src = cvLoadImage(INPUT_IMAGE);//获取图像
IplImage* dst = cvCreateImage(cvGetSize(src), src->depth,src->nChannels);//获取原始图像大小
AXI_STREAM src_axi;
AXI_STREAM dst_axi;
IplImage2AXIvideo(src, src_axi);
//image_filter(src_axi, dst_axi, src->height, src->width);
 AXIvideo2IplImage(src_axi, dst);
 cvSaveImage(OUTPUT_IMAGE, dst);
 cvShowImage( "result_1080p",dst);
 cvReleaseImage(&src);
 cvWaitKey();
 return 0;


	/*
//方法2 cvLoadImage函数加载图片
Mat src_rgb =imread(INPUT_IMAGE,CV_LOAD_IMAGE_GRAYSCALE);//加载图片并灰度显示
 IplImage src = src_rgb;
 cvSaveImage(OUTPUT_IMAGE, &src);
 cvShowImage("src",&src);
 waitKey(0);
 return 0;
*/

/*
//读取视频文件
IplImage *frame;
CvCapture *capture = cvCaptureFromAVI("1.avi");//获取视频数据
cvNamedWindow("AVI player",0);
while(true)
{
 if(cvGrabFrame(capture))
 {
 frame = cvRetrieveFrame(capture);
 cvShowImage("AVI player",frame);
 if(cvWaitKey(10)>=0) break;
 }
 else
 {
 break;
 } }
cvReleaseCapture(&capture);
cvDestroyWindow("AVI player");
return 0;
*/


/*
//摄像头操作
 IplImage *frame;
CvCapture *capture = cvCaptureFromCAM(1);//捕获摄像头数据0--笔记本自带摄像头
1--外部摄像头
cvNamedWindow("AVI player",0);
while(true)
{
 if(cvGrabFrame(capture))
 {
 frame = cvRetrieveFrame(capture);
 cvShowImage("AVI player",frame);
 if(cvWaitKey(10)>=0) break;
 }
 else
 {
 break;//没有采集到视频数据退出
 } }
cvReleaseCapture(&capture);
cvDestroyWindow("AVI player");
return 0;
*/


}

