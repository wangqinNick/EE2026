`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 03:08:32 PM
// Design Name: 
// Module Name: Draw_Grid_Select
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


module Draw_Grid_Select(
    input clk,
    input btnU,btnD,btnC,btnL,btnR,
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output   [3:0]VGA_Red_Grid ,
    output   [3:0]VGA_Green_Grid ,
    output   [3:0]VGA_Blue_Grid 
    );
    reg [23:0]COUNT = 0;reg my_clk = 0;reg [3:0]counter = 1;
    wire up_output,down_output,center_output,left_output,right_output;
    
    always @ (posedge clk) begin
        COUNT<=COUNT +1;
        my_clk <= (COUNT == 0)? ~ my_clk : my_clk ;
    end
    
    fast_sp_module up(btnU,my_clk,up_output);
    fast_sp_module down(btnD,my_clk,down_output);
    fast_sp_module left(btnL,my_clk,left_output);
    fast_sp_module right(btnR,my_clk,right_output);
    fast_sp_module center(btnC,my_clk,center_output);
    
    wire Condition_For_Grid;
    
    wire Condition_For_Grid1=((VGA_HORZ_COORD == 0)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||
                            ((VGA_VERT_COORD == 0)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||
                            ((VGA_VERT_COORD == 507)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||
                            ((VGA_HORZ_COORD == 635)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507)) ;
                            
    wire Condition_For_Grid2=((VGA_HORZ_COORD == 645)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||
                             ((VGA_VERT_COORD == 0)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                             ((VGA_VERT_COORD == 507)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                             ((VGA_HORZ_COORD == 1279)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507)) ;
                             
    wire Condition_For_Grid3=((VGA_HORZ_COORD == 0)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023))||
                             ((VGA_VERT_COORD == 517)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||
                             ((VGA_VERT_COORD == 1023)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||
                             ((VGA_HORZ_COORD == 635)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) ; 
                                
   wire Condition_For_Grid4=((VGA_HORZ_COORD == 645)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023))||
                            ((VGA_VERT_COORD == 517)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                            ((VGA_VERT_COORD == 1023)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                            ((VGA_HORZ_COORD == 1279)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) ;                                                       
                            
    always @(posedge my_clk)begin
        if(up_output)begin
            if(counter==3)counter<=1;
            else if (counter==4) counter<=2;
        end
        if(down_output)begin
            if(counter==1)counter<=3;
            else if (counter==2) counter<=4;
        end    
        if(left_output)begin
            if(counter==2)counter<=1;
            else if (counter==4) counter<=3;
            else if (counter==3) counter<=2;
        end    
        if(right_output)begin
            if(counter==1)counter<=2;
            else if (counter==3) counter<=4;
            else if (counter==2) counter<=3;
        end               
    end
    
    assign Condition_For_Grid=(counter==1)?Condition_For_Grid1:((counter==2)?Condition_For_Grid2:((counter==3)?Condition_For_Grid3:((counter==4)?Condition_For_Grid4:0)));
    
    assign VGA_Red_Grid = Condition_For_Grid ? 4'h0 : 0 ;
    assign VGA_Green_Grid = Condition_For_Grid? 4'hC : 0 ;
    assign VGA_Blue_Grid = Condition_For_Grid ? 4'h0 : 0 ;
    
endmodule
