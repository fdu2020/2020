#include "shift_led.h"
#include <stdio.h>
using namespace std;
int main()
{
led_t led_o;
led_t led_i = 0xFE;//1111_1110
const int SHIFT_TIME = 8;
int i;
for(i = 0;i < SHIFT_TIME;i++)
{
shift_led(&led_o,led_i);
led_i = led_o;
char string[25];
itoa((unsigned int)led_o&0xFF,string,2);//&oxFF是为了取led_o的8位，转化为二进制数出
if(i == 6)
fprintf(stdout,"shift_out= 0%s\n",string);//数据对齐，高位补零
else
fprintf(stdout,"shift_out= %s\n",string);
}
}
