`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/25 16:00:59
// Design Name: 
// Module Name: key
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module key(
input clk_i,
input rst_n_i,
input key_i,
output [3:0] led_o,
output [19:0] div_cnt_tb,
output [2:0] key_state_tb
);


localparam DELAY_Param=20'd999_999;//for project	10ms检测一次，100_000000/(1000ms/10ms)-1=999_999
//localparam DELAY_Param=19'd1500;	  //for simulation
//localparam DELAY_Param=19'd10;	  //No filter jitter


reg [3:0] led_o_r;
(*KEEP = "TRUE" *)reg [19:0] div_cnt;//10ms分频计数器没事，当计数10ms结束时，清零处理
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div_cnt<=20'd0;
	else if(div_cnt<DELAY_Param)
		div_cnt<=div_cnt+1'b1;
	else 
		div_cnt<=0;
end

wire delay_10ms=(div_cnt==DELAY_Param) ? 1'b1:1'b0;//10ms计数完成时候，产生一个脉冲信号

//按键消抖测试状态机
localparam DETECTER1=3'b000;
localparam DETECTER2=3'b001;
localparam DETECTER3=3'b010;
localparam DETECTER4=3'b011;
localparam LED_DIS  =3'b100;

reg low_flag;			//检测按键
reg high_flag;
reg [2:0] key_state;
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		begin
			key_state<=DETECTER1;		//进入检测状态
			low_flag<=0;
			high_flag<=0;
			led_o_r<=4'b1111;			//初始状态，led熄灭
		end
	else if(delay_10ms)					//每10ms检测一次
		begin
			case(key_state)
				DETECTER1 :			//检测按键是否按下，如果按下，进入下一状态，否则循环检测
					begin
						if(key_i!=1'b1)
							key_state<=DETECTER2;
						else 
							key_state<=DETECTER1;
					end
					
				DETECTER2 :			//再次检测按键是否按下，如果按下，表明按键消抖结束，按键却已按下，产生标志位low_flag
					begin	
						if(key_i!=1'b1)
							begin
								low_flag<=1'b1;
								key_state<=DETECTER3;//再次进入按键检测状态
							end
						else
							begin
								key_state<=DETECTER1;
								low_flag<=low_flag;
							end
					end
					
				DETECTER3 :
					begin
						if(key_i==1'b1)
							key_state<=DETECTER4;	//检测按键是否弹起，即按键断开，如果检测到断开，进入下一状态，否则循环检测
						else
							key_state<=DETECTER3;
					end
				
				DETECTER4 :						//再次检测按键是否弹起，如果弹起，表明按键消抖结束，按键却已弹起，产生标志位high_flag
					begin
						if(key_i==1'b1)			
							begin
								high_flag<=1'b1;
								key_state<=LED_DIS; //进入LED显示状态
							end
						else
							begin
								high_flag<=high_flag;
								key_state<=DETECTER3;
							end
					end
				
				LED_DIS :
					begin
						if(high_flag & low_flag)	 //当按键闭合和弹起状态完成时，led灯状态翻转，状态机再次进入检测状态
							begin
								key_state<=DETECTER1;
								led_o_r<=~led_o_r;
								high_flag<=1'b0;//按键状态标志位，清零
								low_flag<=1'b0;//按键状态标志位，清零
							end
						else
							begin
								led_o_r<=led_o_r;
								key_state<=key_state;
								high_flag<=high_flag;
								low_flag<=low_flag;
							end
					end
				default:
					begin
						key_state<=DETECTER1;
						led_o_r<=0;
						high_flag<=0;
						low_flag<=0;
					end
			endcase
		end
	else
		begin
			key_state<=key_state;
			led_o_r<=led_o_r;
			high_flag<=high_flag;
			low_flag<=low_flag;
		end
end
		
assign led_o=led_o_r;		
assign div_cnt_tb=div_cnt;
assign key_state_tb=key_state;

endmodule
