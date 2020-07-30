#include "opencv_top.h"
#include "top.h"
using namespace cv;
using namespace std;
void opencv_hough(IplImage* src, IplImage* dst)
{
 int i ,j;
 unsigned char *ptr, *dst_data;
 //�����ռ�Ĳ��� Բ��O��a,b�� �뾶radius
 int a = 0,b = 0,radius = 0;
 //�ۼ���
 int A0 = src->height;
 int B0 = src->width;
 int R0 = (src->width > src->height)? 2*src->width:2*src->height;//R0ȡ��������ֵ��2��
 int countLength = A0*B0*R0;
 int *count = new int[countLength];
 //ƫ��
 int index = A0 * B0 *radius + A0*b + a;
 //Ϊ�ۼ�����ֵ0
 for (i= 0;i<countLength;i++)
 {
 count[i]=0;
 }
 for (i = 0 ; i< src->height; i++)
 {
 for (j = 0 ; j< src->width ; j++)
 {
 ptr = (unsigned char *)src->imageData + i*src->widthStep + j;
 //������
 if (*ptr == 0 )
 {
   //����a ,b Ϊ;�ۼ�����ֵ
   for (a = 0 ; a< A0;a++)
    {
      for (b = 0; b< B0;b++)
        {
          radius = (int)(sqrt(pow((double)(i-a),2) + pow((double)(j - b),2)));
          index = A0 * B0 *radius + A0*b + a;
          count[index]++;
        }
    }
 }
 }
 }
 //image2ȫ����ֵΪ0
 for (i= 0; i<dst->height; i++)
  {
    for (j = 0 ; j< dst->width;j++)
     {
      dst_data = (unsigned char *)dst->imageData +
      i*dst->widthStep + j;
      *dst_data = 0;
     }
  }
  //�����ۼ������飬�ҳ����е�Բ
  for (a = 0 ; a < A0 ; a++)
    {
     for (b = 0 ; b< B0; b++)
      {
       for (radius = 0 ; radius < R0; radius++)
        {
         index = A0 * B0 *radius + A0*b + a;
         if (count[index] > 200)//ֵ�Ĳ�ͬ�ᵼ��ʶ���Ч������
         {
           //��image2�л��Ƹ�Բ
           for (j = 0 ; j< src->width;j++)
              {
                i = (int)(sqrt(pow((double)radius,2)-pow((double)(j-b),2)) + a);
                if ((i< dst->height) && (i >= 0))
                 {
                   dst_data = (unsigned char*)(dst->imageData + i * dst->widthStep + j);
                  *dst_data = 255;
                 }
                //i������ֵ
                i = a -(int)(sqrt(pow((double)radius,2)-pow((double)(j-b),2)));
                if ((i< dst->height) && (i >= 0))
                  {
                	dst_data = (unsigned char*)(dst->imageData + i * dst->widthStep + j);
                	*dst_data = 255;
                  }
              }
         }
        }
      }
    }
}
