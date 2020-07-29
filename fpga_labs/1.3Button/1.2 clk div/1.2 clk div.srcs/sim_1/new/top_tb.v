`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 18:15:42
// Design Name: 
// Module Name: top_tb
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


module top_tb;


	// Inputs
	reg clk_i;
	reg rst_n_i;

	// Outputs
	wire div2_o;
	wire div3_o;
	wire div4_o;
	wire div8_o;
	wire div2hz_o;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk_i(clk_i), 
		.rst_n_i(rst_n_i), 
		.div2_o(div2_o), 
		.div3_o(div3_o), 
		.div4_o(div4_o),
		.div8_o(div8_o),
		.div2hz_o(div2hz_o)
	);

	initial 
		begin
		// Initialize Inputs4
		clk_i = 0;
		rst_n_i = 0;

		// Wait 100 ns for global reset to finish
		#96;
		rst_n_i=1;
	end
		always
			begin
				#5 clk_i=~clk_i;
			end

      
endmodule
