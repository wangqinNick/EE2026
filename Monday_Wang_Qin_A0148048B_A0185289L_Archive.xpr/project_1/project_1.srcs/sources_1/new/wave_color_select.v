`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 07:34:41 PM
// Design Name: 
// Module Name: background_select
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


module wave_color_select(

    input clk_2Hz,
    input sw6,
    output reg [3:0] Br,
           reg [3:0] Bg,
           reg [3:0] Bb
    );
    //backround colors are all light colors
    reg [8:0] selector;
    always @ (posedge clk_2Hz) 
    begin
        if(sw6 == 1) begin 
            if(selector > 11) begin
                selector <= 0;
            end
            else begin
                selector <= selector + 1;
            end
        end
        
        case (selector) 
            0 : begin
                    Br <= 4'h0;
                    Bg <= 4'h9;
                    Bb <= 4'h0;
                end
            1 : begin
                    Br <= 9;
                    Bg <= 0;
                    Bb <= 9;
                end
            2 : begin
                    Br <= 0;
                    Bg <= 0;
                    Bb <= 9;
                end
            3: begin
                    Br <= 1;
                    Bg <= 3;
                    Bb <= 8;
                end
            4: begin
                    Br <= 8;
                    Bg <= 1;
                    Bb <= 7;
                end
            5: begin
                    Br <= 5;
                    Bg <= 3;
                    Bb <= 6;
                end                    
            6: begin
                    Br <= 3;
                    Bg <= 7;
                    Bb <= 4;
                end    
            7: begin
                    Br <= 7;
                    Bg <= 7;
                    Bb <= 2;
                end   
            8: begin
                    Br <= 4;
                    Bg <= 10;
                    Bb <= 1;
                end                 
            9: begin
                    Br <= 4;
                    Bg <= 12;
                    Bb <= 2;
                end    
            10: begin
                    Br <= 13;
                    Bg <= 1;
                    Bb <= 1;
                end   
            11: begin
                    Br <= 1;
                    Bg <= 1;
                    Bb <= 13;
                end    
                                                                   
        endcase        
    end    
endmodule