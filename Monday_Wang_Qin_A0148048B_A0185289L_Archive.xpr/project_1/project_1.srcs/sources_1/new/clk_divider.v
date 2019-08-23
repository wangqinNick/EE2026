`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2018 15:11:24
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input fpga_clk,
    input [31:0]d_clk,
    output myclk
    );
    wire [31:0] m;
    clk_cal_m name0(d_clk,m);
    clk_div name1(fpga_clk,m,myclk);
    
endmodule
