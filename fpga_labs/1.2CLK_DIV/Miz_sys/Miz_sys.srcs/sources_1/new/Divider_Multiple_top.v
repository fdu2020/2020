`timescale 1ns / 1ps
//-----------------------------------------------------------------------------------------------------
// Target Devices: XC7Z100-FFG900
// Tool versions:  VIVADO 2017.4
// Description: 	Divider_Multiple
// Revision: 		 V1.1
// Additional Comments: 
//1) _i PIN input  
//2) _o PIN output
//3) _n PIN active low
//4) _dg debug signal 
//5) _r  reg delay
//6) _s state machine
//////////////////////////////////////////////////////////////////////////////////


module Divider_Multiple_top(
    input CLK_p,
    input CLK_n,
    input rst_n_i,
    output div2_o,
    output div3_o,
    output div4_o,
    output div8_o,
    output div2hz_o
    );
wire clk_i;
    //对差分时钟采用IBUFGDS IP核去转换
    
    IBUFGDS CLK_U(
                 .I(CLK_p),
                 .IB(CLK_n),
                 .O(clk_i)
    );
      
reg div2_o_r;
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div2_o_r<=1'b0;
	else 
		div2_o_r<=~div2_o_r;
end

reg [1:0] div_cnt1;
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div_cnt1<=2'b00;
	else
		div_cnt1<=div_cnt1+1'b1;
end

reg div4_o_r;
reg div8_o_r;

always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div4_o_r<=1'b0;
	else if(div_cnt1==2'b00 || div_cnt1==2'b10)
		div4_o_r<=~div4_o_r;
	else
		div4_o_r<=div4_o_r;
end

always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div8_o_r<=1'b0;
	else if((~div_cnt1[0]) && (~div_cnt1[1]))
		div8_o_r<=~div8_o_r;
	else
		div8_o_r<=div8_o_r;
end

reg [1:0] pos_cnt;
reg [1:0] neg_cnt;
always@(posedge div2_o_r or negedge rst_n_i)
begin
	if(!rst_n_i)
		pos_cnt<=2'b00;
	else if(pos_cnt==2'd2)
		pos_cnt<=2'b00;
	else
		pos_cnt<=pos_cnt+1'b1;
end

always@(negedge div2_o_r or negedge rst_n_i)
begin
	if(!rst_n_i)	
		neg_cnt<=2'b00;
	else if(neg_cnt==2'd2)
		neg_cnt<=2'b00;
	else
		neg_cnt<=neg_cnt+1'b1;
end

reg div3_o_r0;
reg div3_o_r1;
always@(posedge div2_o_r or negedge rst_n_i)
begin
	if(!rst_n_i)
		div3_o_r0<=1'b0;
	else if(pos_cnt<2'd1)
		div3_o_r0<=1'b1;
	else
		div3_o_r0<=1'b0;
end

always@(negedge div2_o_r or negedge rst_n_i)
begin
	if(!rst_n_i)
		div3_o_r1<=1'b0;
	else if(neg_cnt<2'd1)	
		div3_o_r1<=1'b1;
	else
		div3_o_r1<=1'b0;
end
reg div2hz_o_r;
reg [25:0] div2hz_cnt;
always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div2hz_cnt<=0;
	else if(div2hz_cnt<26'd50_000000)
		div2hz_cnt<=div2hz_cnt+1'b1;
	else
		div2hz_cnt<=0;
end

always@(posedge clk_i or negedge rst_n_i)
begin
	if(!rst_n_i)
		div2hz_o_r<=0;
	else if(div2hz_cnt==26'd24_999999 || div2hz_cnt==26'd49_999999)
		div2hz_o_r<=~div2hz_o_r;
	else
		div2hz_o_r<=div2hz_o_r;
end

assign div2_o=div2_o_r;
assign div3_o=div3_o_r0 | div3_o_r1;
assign div4_o=div4_o_r;
assign div8_o=div8_o_r;
assign div2hz_o=div2hz_o_r;

ila_0 ila_0_0 (
	.clk(clk_i), // input wire clk
	.probe0(div2hz_o), // input wire [0:0]  probe0  
	.probe1({div2_o,div3_o,div4_o,div8_o})
	);// input wire [3:0]  probe1 
	
endmodule
