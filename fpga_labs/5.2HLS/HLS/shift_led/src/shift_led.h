#ifndef _SHIFT_LED_H_
#define _SHIFT_LED_H_
//��������int�Զ���λ���ͷ�ļ�
#include "ap_int.h"
//���õư��붯һ�Σ�������ʱ��Ƶ����100M
//#define MAX_CNT 1000/2 //�����ڷ��棬��Ȼʱ��ϳ�
#define MAX_CNT 100000000/2
#define SHIFT_FLAG MAX_CNT-2
//typedef int led_t;
//typedef int cnt32_t;//������

typedef ap_fixed<8,8> led_t;
//��һ��4������λ���ڶ���4�����������ֵ�λ����8����С������λ��4-4=0
typedef ap_fixed<32,32> cnt32_t;
void shift_led(led_t *led_o,led_t led_i);
#endif
