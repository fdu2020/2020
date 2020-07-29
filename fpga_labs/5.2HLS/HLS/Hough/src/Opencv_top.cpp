#include "opencv_top.h"
#include "top.h"
using namespace cv;
using namespace std;
void opencv_hough(IplImage* src, IplImage* dst)
{
 int i ,j;
 unsigned char *ptr, *dst_data;
 //参数空间的参数 圆心O（a,b） 半径radius
 int a = 0,b = 0,radius = 0;
 //累加器
 int A0 = src->height;
 int B0 = src->width;
 int R0 = (src->width > src->height)? 2*src->width:2*src->height;//R0取长宽的最大值的2倍
 int countLength = A0*B0*R0;
 int *count = new int[countLength];
 //偏移
 int index = A0 * B0 *radius + A0*b + a;
 //为累加器赋值0
 for (i= 0;i<countLength;i++)
 {
 count[i]=0;
 }
 for (i = 0 ; i< src->height; i++)
 {
 for (j = 0 ; j< src->width ; j++)
 {
 ptr = (unsigned char *)src->imageData + i*src->widthStep + j;
 //检测黑线
 if (*ptr == 0 )
 {
   //遍历a ,b 为;累加器赋值
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
 //image2全部赋值为0
 for (i= 0; i<dst->height; i++)
  {
    for (j = 0 ; j< dst->width;j++)
     {
      dst_data = (unsigned char *)dst->imageData +
      i*dst->widthStep + j;
      *dst_data = 0;
     }
  }
  //遍历累加器数组，找出所有的圆
  for (a = 0 ; a < A0 ; a++)
    {
     for (b = 0 ; b< B0; b++)
      {
       for (radius = 0 ; radius < R0; radius++)
        {
         index = A0 * B0 *radius + A0*b + a;
         if (count[index] > 200)//值的不同会导致识别的效果差异
         {
           //在image2中绘制该圆
           for (j = 0 ; j< src->width;j++)
              {
                i = (int)(sqrt(pow((double)radius,2)-pow((double)(j-b),2)) + a);
                if ((i< dst->height) && (i >= 0))
                 {
                   dst_data = (unsigned char*)(dst->imageData + i * dst->widthStep + j);
                  *dst_data = 255;
                 }
                //i有两个值
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
