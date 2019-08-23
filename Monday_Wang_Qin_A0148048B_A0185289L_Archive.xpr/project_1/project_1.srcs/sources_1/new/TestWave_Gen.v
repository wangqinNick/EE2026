`timescale 1ns / 1ps


module TestWave_Gen(input clock, output reg [11:2] ramp_sample = 0);//4
    always @(posedge clock) begin
        ramp_sample <= (ramp_sample == 639) ? 0 : ramp_sample + 1;
    end
endmodule
