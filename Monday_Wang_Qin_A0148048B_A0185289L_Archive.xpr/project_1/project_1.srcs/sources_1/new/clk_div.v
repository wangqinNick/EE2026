`timescale 1ns / 1ps


module clk_div(
    input CLK, [31:0] m_value,
    output reg clk = 0
    );
    
    reg [31:0] counter = 0;
    always @(posedge CLK) begin
        counter <= (counter >= m_value) ? 0 : (counter + 1);
        clk <= (counter == 0) ? (~clk) : clk;
    end
endmodule
