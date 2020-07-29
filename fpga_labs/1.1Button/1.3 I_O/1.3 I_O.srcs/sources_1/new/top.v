`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 16:24:16
// Design Name: 
// Module Name: top
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


 module top(
    input CLK_p,
    input CLK_n,
	input rst_n_i,
	
	input uart_rx_i,
	
	output uart_tx_o
    );

wire [7:0] uart_rx_data_o;
wire uart_rx_done;
wire clk_i;   
IBUFGDS CLK_U(
             .I(CLK_p),
             .IB(CLK_n),
             .O(clk_i)
); 
uart_rx_path uart_rx_path_u (
    .clk_i(clk_i), 
    .uart_rx_i(uart_rx_i), 

    .uart_rx_data_o(uart_rx_data_o), 
    .uart_rx_done(uart_rx_done)
    );
    
uart_tx_path uart_tx_path_u (
    .clk_i(clk_i), 
    .uart_tx_data_i(uart_rx_data_o), 
    .uart_tx_en_i(uart_rx_done), 
    .uart_tx_o(uart_tx_o)
    );
    
endmodule