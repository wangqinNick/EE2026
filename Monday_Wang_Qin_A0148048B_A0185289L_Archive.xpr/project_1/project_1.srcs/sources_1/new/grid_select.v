`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 08:58:45 PM
// Design Name: 
// Module Name: grid_select
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


module grid_select(
    input clk_2Hz,
    input sw6,
    output reg [3:0] Br,
           reg [3:0] Bg,
           reg [3:0] Bb
    );//backround colors are all light colors
       reg [8:0] selector;
       always @ (posedge clk_2Hz) 
       begin
           if(sw6 == 1) begin 
               if(selector > 15) begin
                   selector <= 0;
               end
               else begin
                   selector <= selector + 1;
               end
           end
           
           case (selector) 
               0 : begin
                       Br <= 63;
                       Bg <= 3;
                       Bb <= 3;
                   end
               1 : begin
                       Br <= 58;
                       Bg <= 3;
                       Bb <= 15;
                   end
               2 : begin
                       Br <= 54;
                       Bg <= 3;
                       Bb <= 23;
                   end
               3: begin
                       Br <= 50;
                       Bg <= 2;
                       Bb <= 30;
                   end
               4: begin
                       Br <= 45;
                       Bg <= 2;
                       Bb <= 37;
                   end
               5: begin
                       Br <= 36;
                       Bg <= 3;
                       Bb <= 41;
                   end                    
               6: begin
                       Br <= 39;
                       Bg <= 4;
                       Bb <= 42;
                   end    
               7: begin
                       Br <= 24;
                       Bg <= 5;
                       Bb <= 43;
                   end   
               8: begin
                       Br <= 19;
                       Bg <= 6;
                       Bb <= 43;
                   end                 
               9: begin
                       Br <= 15;
                       Bg <= 7;
                       Bb <= 43;
                   end    
               10: begin
                       Br <= 11;
                       Bg <= 8;
                       Bb <= 44;
                   end   
               11: begin
                       Br <= 2;
                       Bg <= 43;
                       Bb <= 26;
                   end    
               12: begin
                       Br <= 40;
                       Bg <= 59;
                       Bb <= 3;
                   end 
               13: begin
                       Br <= 63;
                       Bg <= 61;
                       Bb <= 3;
                   end 
               14: begin
                       Br <= 63;
                       Bg <= 48;
                       Bb <= 3;
                   end 
               15: begin
                       Br <= 63;
                       Bg <= 30;
                       Bb <= 3;
                   end 
               16: begin
                       Br <= 60;
                       Bg <= 3;
                       Bb <= 11;
                   end                                                        
           endcase        
       end    
   endmodule
