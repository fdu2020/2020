`timescale 1ns / 1ps

module key_jitter_TB;


reg clk;
reg rst;
reg key;
wire [3:0] led;


Key_Jitter uut (
	.clk(clk), 
	.rst(rst), 
	.key(key), 
	.led(led)
	);

initial
	begin
		
		clk = 0;
		forever
		#5 clk=~clk;
	end
	
initial
	begin
		
		rst = 0;
		#100;
		rst=1;
		key = 1;
		#10000;
		forever
			begin
				key = 0;
				// Wait 100 ns for global reset to finish
				#100;
				key=0; #1000;
				key=1; #2000;
				key=0; #1000;
				key=1; #3000;
				key=0; #1500;
				key=0;
				#1000000;
				key=1; #1000;
				key=0; #1000;
				key=1; #2000;
				key=0; #5000;
				key=1;
				#2000000;
				key=0; #1000;
				key=0; #1000;
				key=1; #2000;
				key=0; #5000;
				key=0;
				#2000000;
				key=1; #1000;
				key=0; #1000;
				key=1; #2000;
				key=0; #5000;
				key=1;
				#2000000;
				key=0; #1000;
				key=0; #1000;
				key=1; #2000;
				key=0; #5000;
				key=0;
				#2000000;
				key=1; #1000;
				key=0; #1000;
				key=1; #2000;
				key=0; #5000;
				key=1;
				#2000000;
			end
	end

endmodule
