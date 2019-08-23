`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2018 15:07:31
// Design Name: 
// Module Name: clk_cal_m
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


module clk_cal_m(
    input [31:0]clk,
    output [31:0] m
    );
    assign m = 100000000/(2*clk)-1;
endmodule
