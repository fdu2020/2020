#include <hls_opencv.h>
#include <iostream>

typedef hls::stream<ap_axiu<1024,1,1,1>> AXI_STREAM;
using namespace cv;

#define INPUT_IMAGE "test_1080p.bmp"
#define OUTPUT_IMAGE "result_1080p.bmp"
int main (int argc, char** argv)
{
//����1 cvLoadImage��������ͼƬ
IplImage* src = cvLoadImage(INPUT_IMAGE);//��ȡͼ��
IplImage* dst = cvCreateImage(cvGetSize(src), src->depth,src->nChannels);//��ȡԭʼͼ���С
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
//����2 cvLoadImage��������ͼƬ
Mat src_rgb =imread(INPUT_IMAGE,CV_LOAD_IMAGE_GRAYSCALE);//����ͼƬ���Ҷ���ʾ
 IplImage src = src_rgb;
 cvSaveImage(OUTPUT_IMAGE, &src);
 cvShowImage("src",&src);
 waitKey(0);
 return 0;
*/

/*
//��ȡ��Ƶ�ļ�
IplImage *frame;
CvCapture *capture = cvCaptureFromAVI("1.avi");//��ȡ��Ƶ����
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
//����ͷ����
 IplImage *frame;
CvCapture *capture = cvCaptureFromCAM(1);//��������ͷ����0--�ʼǱ��Դ�����ͷ
1--�ⲿ����ͷ
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
 break;//û�вɼ�����Ƶ�����˳�
 } }
cvReleaseCapture(&capture);
cvDestroyWindow("AVI player");
return 0;
*/


}

