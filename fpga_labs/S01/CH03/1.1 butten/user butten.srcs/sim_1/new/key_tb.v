`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/25 16:02:11
// Design Name: 
// Module Name: key_tb
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


module key_tb;

	// Inputs
	reg clk_i;
	reg rst_n_i;
	reg key_i;

	// Outputs
	wire [3:0] led_o;
	//wire [19:0] div_cnt_tb;
	//wire [2:0] key_state_tb;

	// Instantiate the Unit Under Test (UUT)
	key u1 (
		.clk_i(clk_i), 
		.rst_n_i(rst_n_i), 
		.key_i(key_i), 
		.led_o(led_o)
		//.div_cnt_tb(div_cnt_tb),
		//.key_state_tb(key_state_tb)
	);

initial
	begin
		// Initialize Inputs
		clk_i = 0;
		forever
		#5 clk_i=~clk_i;
	end
	
initial
	begin
		// Initialize Inputs
		rst_n_i = 0;
		#100;
		rst_n_i=1;
		key_i = 1;
		#10000;
		forever
			begin
				key_i = 0;
				// Wait 100 ns for global reset to finish
				#100;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #1000;
				key_i=1; #3000;
				key_i=0; #1500;
				key_i=0;
				#1000000;
				key_i=1; #1000;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #5000;
				key_i=1;
				#2000000;
				key_i=0; #1000;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #5000;
				key_i=0;
				#2000000;
				key_i=1; #1000;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #5000;
				key_i=1;
				#2000000;
				key_i=0; #1000;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #5000;
				key_i=0;
				#2000000;
				key_i=1; #1000;
				key_i=0; #1000;
				key_i=1; #2000;
				key_i=0; #5000;
				key_i=1;
				#2000000;
			end
	end

endmodule

