#include "shift_led.h"
void shift_led(led_t *led_o,led_t led_i)
{
#pragma HLS INTERFACE ap_ovld port=led_o
#pragma HLS INTERFACE ap_ovld port=led_o
#pragma HLS INTERFACE ap_vld port=led_i
led_t tmp_led;
cnt32_t i;//for循环的延时变量
tmp_led = led_i;
for(i = 0;i < MAX_CNT;i++)
 {
  if(i==SHIFT_FLAG)
    {
      tmp_led = ((tmp_led>>7)&0x01) + ((tmp_led<<1)&0xFE);//左移
      *led_o = tmp_led;
    }
 }
}
