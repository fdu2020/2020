`timescale 1ns / 1ps

module key_jitter(
input clk,
input rst,
input key,
output [3:0] led
);

localparam DELAY=20'd999_999;
reg [3:0] led_o;
reg [19:0] div;
always@(posedge clk or negedge rst)
begin
	if(!rst)
		div<=20'd0;
	else if(div<DELAY)
		div<=div+1'b1;
	else 
		div<=0;
end

wire delay_10ms=(div==DELAY) ? 1'b1:1'b0;

localparam state1=3'b000;
localparam state2=3'b001;
localparam state3=3'b010;
localparam state4=3'b011;
localparam LED_p  =3'b100;

reg low;			
reg high;
reg [2:0] key_state;
always@(posedge clk or negedge rst)
begin
	if(!rst)
		begin
			key_state<=state1;		
			low<=0;
			high<=0;
			led_o<=4'b1111;			
		end
	else if(delay_10ms)					
		begin
			case(key_state)
				state1 :			
					begin
						if(key!=1'b1)
							key_state<=state2;
						else 
							key_state<=state1;
					end
					
				state2 :			
					begin	
						if(key!=1'b1)
							begin
								low<=1'b1;
								key_state<=state3;
							end
						else
							begin
								key_state<=state1;
								low<=low;
							end
					end
					
				state3 :
					begin
						if(key==1'b1)
							key_state<=state4;	
						else
							key_state<=state3;
					end
				
				state4 :						
					begin
						if(key==1'b1)			
							begin
								high<=1'b1;
								key_state<=LED_p;
							end
						else
							begin
								high<=high;
								key_state<=state3;
							end
					end
				
				LED_p :
					begin
						if(high & low)	 
							begin
								key_state<=state1;
								led_o<=~led_o;
								high<=1'b0;
								low<=1'b0;
							end
						else
							begin
								led_o<=led_o;
								key_state<=key_state;
								high<=high;
								low<=low;
							end
					end
				default:
					begin
						key_state<=state1;
						led_o<=0;
						high<=0;
						low<=0;
					end
			endcase
		end
	else
		begin
			key_state<=key_state;
			led_o<=led_o;
			high<=high;
			low<=low;
		end
end
		
assign led=led_o;		
assign div_tb=div;
assign key_state_tb=key_state;

endmodule
