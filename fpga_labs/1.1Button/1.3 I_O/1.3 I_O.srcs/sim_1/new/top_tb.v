`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 16:28:00
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
reg CLK_p;
reg CLK_n;
reg rst_n_i;
reg uart_rx_i;
wire [7:0]  uart_tx_o;
reg clk_i;

top u_uart_top
(
.CLK_p      (CLK_p),
.CLK_n      (CLK_n), 
.rst_n_i    (rst_n_i),
.uart_rx_i  (uart_rx_i),
.uart_tx_o  (uart_tx_o)
);

initial
begin 
        clk_i=0;
		CLK_p = 0;
        CLK_n = 1;
		rst_n_i = 0;
		uart_rx_i = 1'b1;

		// Wait 100 ns for global reset to finish
		#96;
		rst_n_i=1;
		#104170
		uart_rx_i = 1'b1;
		#104170
        uart_rx_i = 1'b0;//start
        //1001_0101
        #104170
        uart_rx_i = 1'b1;
         #104170
        uart_rx_i = 1'b0;
         #104170
        uart_rx_i = 1'b1;
         #104170
        uart_rx_i = 1'b0;
         #104170
        uart_rx_i = 1'b1;
          #104170
        uart_rx_i = 1'b0;
          #104170
        uart_rx_i = 1'b0;
          #104170
        uart_rx_i = 1'b1;        
           #104170
        uart_rx_i = 1'b1;//stop             
          #808320
        //00000101
        uart_rx_i = 1'b0;//start
        #104170
        uart_rx_i = 1'b1;
         #104170
        uart_rx_i = 1'b0;
         #104170
        uart_rx_i = 1'b1;
         #104170
        uart_rx_i = 1'b0;
         #104170
        uart_rx_i = 1'b0;
          #104170
        uart_rx_i = 1'b0;
          #104170
        uart_rx_i = 1'b0;
          #104170
        uart_rx_i = 1'b0;        
           #104170
        uart_rx_i = 1'b1;//stop   
        
           #808320
      //10000100
      uart_rx_i = 1'b0;//start
      #104170
      uart_rx_i = 1'b0;
       #104170
      uart_rx_i = 1'b0;
       #104170
      uart_rx_i = 1'b1;
       #104170
      uart_rx_i = 1'b0;
       #104170
      uart_rx_i = 1'b0;
        #104170
      uart_rx_i = 1'b0;
        #104170
      uart_rx_i = 1'b0;
        #104170
      uart_rx_i = 1'b1;           
          #104170
      uart_rx_i = 1'b1;//stop                     
end

always 
    begin
        #5
        CLK_p = ~CLK_p;
        CLK_n = ~CLK_n;
        clk_i=~clk_i;
    end
    
endmodule

