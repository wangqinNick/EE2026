`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2018 14:36:22
// Design Name: 
// Module Name: fast_sp_module\
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


module fast_sp_module(
    input pb,
    input sp_clock,
    output spo
    );
    
     wire dff_one_out, dff_two_out;
        
        dff_module dff_one(.dff_clk(sp_clock),.D(pb),.Q(dff_one_out));
        dff_module dff_two(.dff_clk(sp_clock),.D(dff_one_out),.Q(dff_two_out));
        
        assign spo = dff_one_out & ~dff_two_out;
endmodule
