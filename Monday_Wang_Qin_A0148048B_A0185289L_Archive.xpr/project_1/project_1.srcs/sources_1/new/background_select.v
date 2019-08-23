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


module background_select(

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
                    Br <= 0;
                    Bg <= 1;
                    Bb <= 1;
                end
            1 : begin
                    Br <= 1;
                    Bg <= 0;
                    Bb <= 0;
                end
            2 : begin
                    Br <= 0;
                    Bg <= 0;
                    Bb <= 1;
                end
            3: begin
                    Br <= 0;
                    Bg <= 1;
                    Bb <= 2;
                end
            4: begin
                    Br <= 2;
                    Bg <= 0;
                    Bb <= 2;
                end
            5: begin
                    Br <= 3;
                    Bg <= 1;
                    Bb <= 3;
                end                    
            6: begin
                    Br <= 0;
                    Bg <= 0;
                    Bb <= 2;
                end    
            7: begin
                    Br <= 1;
                    Bg <= 0;
                    Bb <= 3;
                end   
            8: begin
                    Br <= 3;
                    Bg <= 0;
                    Bb <= 1;
                end                 
            9: begin
                    Br <= 4;
                    Bg <= 2;
                    Bb <= 2;
                end    
            10: begin
                    Br <= 3;
                    Bg <= 1;
                    Bb <= 1;
                end   
            11: begin
                    Br <= 1;
                    Bg <= 1;
                    Bb <= 3;
                end    
                                                                   
        endcase        
    end    
endmodule
