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


localparam DELAY_Param=20'd999_999;//for project	10ms���һ�Σ�100_000000/(1000ms/10ms)-1=999_999
//localparam DELAY_Param=19'd1500;	  //for simulation
//localparam DELAY_Param=19'd10;	  //No filter jitter


reg [3:0] led_o_r;
(*KEEP = "TRUE" *)reg [19:0] div_cnt;//10ms��Ƶ������û�£�������10ms����ʱ�����㴦��
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div_cnt<=20'd0;
	else if(div_cnt<DELAY_Param)
		div_cnt<=div_cnt+1'b1;
	else 
		div_cnt<=0;
end

wire delay_10ms=(div_cnt==DELAY_Param) ? 1'b1:1'b0;//10ms�������ʱ�򣬲���һ�������ź�

//������������״̬��
localparam DETECTER1=3'b000;
localparam DETECTER2=3'b001;
localparam DETECTER3=3'b010;
localparam DETECTER4=3'b011;
localparam LED_DIS  =3'b100;

reg low_flag;			//��ⰴ��
reg high_flag;
reg [2:0] key_state;
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		begin
			key_state<=DETECTER1;		//������״̬
			low_flag<=0;
			high_flag<=0;
			led_o_r<=4'b1111;			//��ʼ״̬��ledϨ��
		end
	else if(delay_10ms)					//ÿ10ms���һ��
		begin
			case(key_state)
				DETECTER1 :			//��ⰴ���Ƿ��£�������£�������һ״̬������ѭ�����
					begin
						if(key_i!=1'b1)
							key_state<=DETECTER2;
						else 
							key_state<=DETECTER1;
					end
					
				DETECTER2 :			//�ٴμ�ⰴ���Ƿ��£�������£�����������������������ȴ�Ѱ��£�������־λlow_flag
					begin	
						if(key_i!=1'b1)
							begin
								low_flag<=1'b1;
								key_state<=DETECTER3;//�ٴν��밴�����״̬
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
							key_state<=DETECTER4;	//��ⰴ���Ƿ��𣬼������Ͽ��������⵽�Ͽ���������һ״̬������ѭ�����
						else
							key_state<=DETECTER3;
					end
				
				DETECTER4 :						//�ٴμ�ⰴ���Ƿ���������𣬱���������������������ȴ�ѵ��𣬲�����־λhigh_flag
					begin
						if(key_i==1'b1)			
							begin
								high_flag<=1'b1;
								key_state<=LED_DIS; //����LED��ʾ״̬
							end
						else
							begin
								high_flag<=high_flag;
								key_state<=DETECTER3;
							end
					end
				
				LED_DIS :
					begin
						if(high_flag & low_flag)	 //�������պϺ͵���״̬���ʱ��led��״̬��ת��״̬���ٴν�����״̬
							begin
								key_state<=DETECTER1;
								led_o_r<=~led_o_r;
								high_flag<=1'b0;//����״̬��־λ������
								low_flag<=1'b0;//����״̬��־λ������
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
