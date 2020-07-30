#include "top.h"
#include <stdio.h>
#include <iostream>
#include <math.h>
using namespace std;
void hls::hls_hough_line(GRAY_IMAGE &src,GRAY_IMAGE &dst,int rows,int cols)
{
  GRAY_PIXEL result;
  int row ,col,k;
  //参数空间的参数圆心O（a,b）半径radius
  int a = 0,b = 0,radius = 0;
  //累加器
  int A0 = rows;
  int B0 = cols;
  //注意HLS不支持变长数组，所以这里直接指定数据长度
  const int Size = 1089900;//Size = rows*cols*(120-110);
  #ifdef __SYNTHESIS__
   int _count[Size];
   int *count = &_count[0];
  #else
   int *count =(int *) malloc(Size * sizeof(int));
  #endif
  //偏移
  int index ;
  //为累加器赋值0
  for (row = 0;row < Size;row++)
   {
     count[row] = 0;
    }
   GRAY_PIXEL src_data;
   uchar temp0;
   for (row = 0; row< rows;row++)
   {
     for (col = 0; col< cols;col++)
      {
        src >> src_data;
        uchar temp = src_data.val[0];
        //检测黑线
        if (temp == 0)
         {
           //遍历a ,b 为;累加器赋值
           for (a = 0;a < A0;a++)
            {
              for (b = 0;b < B0;b++)
               {
                 radius = (int)(sqrt(pow((double)(row-a),(double)2) +pow((double)(col - b),(double)2)));
                 if(radius > 110 && radius < 120)
                   {
                     index = A0 * B0 *(radius-110) + A0*b + a;
                     count[index]++;
                    }
                }
              }
           }
        }
     }
     //遍历累加器数组，找出所有的圆
    for (a = 0 ; a < A0 ; a++)
     {
       for (b = 0 ; b < B0; b++)
         {
           for (radius = 110 ; radius < 120; radius++)
             {
               index = A0 * B0 *(radius-110) + A0*b + a;
               if (count[index] > 210)
                {
                  //在image2中绘制该圆
                  for(k = 0; k < rows;k++)
                   {
                     for (col = 0 ; col< cols;col++)
                       {
                         //x有两个值，根据圆公式(x-a)^2+(y-b)^2=r^2得到
                         int temp =(int)(sqrt(pow((double)radius,(double)2)- pow((double)(col-b),(double)2)));
                         int x1 = a + temp;
                         int x2 = a - temp;
                         if ( (k == x1)||(k == x2) )
                           {
                             result.val[0] = (uchar)255;
                            }
                           else
                            {
                              result.val[0] = (uchar)0;
                              }
                         dst << result;
                         }
                     }
                  }
                }
             }

     }
}
void hls_hough(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows,int cols)
{
 GRAY_IMAGE img_src(rows, cols);
#pragma HLS STREAM variable=img_src depth=64 dim=1
 GRAY_IMAGE img_dst(rows, cols);
#pragma HLS STREAM variable=img_dst depth=64 dim=1
 hls::AXIvideo2Mat(src_axi,img_src);
 hls::hls_hough_line(img_src,img_dst,rows,cols);
 hls::Mat2AXIvideo(img_dst,dst_axi);
}
