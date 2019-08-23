`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2018 14:34:39
// Design Name: 
// Module Name: dff_module
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


module dff_module(
    input dff_clk,
    input D,
    output reg Q = 0
    );
    always @ (posedge dff_clk) 
        begin
            Q <= D;
        end
endmodule
