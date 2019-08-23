`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 08:42:56 PM
// Design Name: 
// Module Name: Draw_Background
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


module Draw_Background(
    input [3:0] gr,
    input [3:0] gg,
    input [3:0] gb,
    input clk,
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    input sw15,
    input sw14,sw13,sw12,sw11,sw10,
    output   [3:0]VGA_Red_Grid ,
    output   [3:0]VGA_Green_Grid ,
    output   [3:0]VGA_Blue_Grid 
    );
    
    wire clk_2Hz;
    reg[3:0]counter=0;
    reg [3:0]Rback=4'h0;
    reg [3:0]Gback=4'h0;
    reg [3:0]Bback=4'h0;
    reg a =0;
    clk_divider name1(clk,2,clk_2Hz);
// The code below draws two grid lines. Modify the codes to draw more grid lines.
    wire Condition_For_Grid_A ; 
    wire Condition_For_Grid_A0 = ((VGA_HORZ_COORD == 320)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507)) ||  ((VGA_VERT_COORD == 256)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||
                                 ((VGA_HORZ_COORD == 320)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) ||  ((VGA_VERT_COORD == 256)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                                 ((VGA_HORZ_COORD == 960)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) ||  ((VGA_VERT_COORD == 768)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                                 ((VGA_HORZ_COORD == 960)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507)) ||  ((VGA_VERT_COORD == 768)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635)) ;
    //wire Condition_For_Grid_A1 = ((VGA_HORZ_COORD == 640)||(VGA_VERT_COORD>=513&&VGA_VERT_COORD<=511) )||  ((VGA_VERT_COORD == 0)||(VGA_HORZ_COORD<=641&&VGA_HORZ_COORD>=639)) ;
    wire Condition_For_Grid_A2 = ((VGA_HORZ_COORD == 635)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||((VGA_HORZ_COORD == 635)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) || 
                                 ((VGA_HORZ_COORD == 645)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||((VGA_HORZ_COORD == 645)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023)) || 
                                 ((VGA_VERT_COORD == 507)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||((VGA_VERT_COORD == 507)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                                 ((VGA_VERT_COORD == 517)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||((VGA_VERT_COORD == 517)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                                 ((VGA_HORZ_COORD == 0)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||((VGA_HORZ_COORD == 0)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023))||
                                 ((VGA_VERT_COORD == 0)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||((VGA_VERT_COORD == 0)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279))||
                                 ((VGA_HORZ_COORD == 1279)&&(VGA_VERT_COORD>=0&&VGA_VERT_COORD<=507))||((VGA_HORZ_COORD == 1279)&&(VGA_VERT_COORD>=517&&VGA_VERT_COORD<=1023))||
                                 ((VGA_VERT_COORD == 1023)&&(VGA_HORZ_COORD>=0&&VGA_HORZ_COORD<=635))||((VGA_VERT_COORD == 1023)&&(VGA_HORZ_COORD>=645&&VGA_HORZ_COORD<=1279)) ;

// Using the gridline example, insert your code below to draw ticks on the x-axis and y-axis.
    //wire Condition_For_Ticks; 
    //wire Condition_For_Ticks1 =((VGA_HORZ_COORD%16==0)&&(VGA_VERT_COORD>=507)&&(VGA_VERT_COORD<=517))||((VGA_VERT_COORD%8==0)&&(VGA_HORZ_COORD>=634)&&(VGA_HORZ_COORD<=646));
    //assign Condition_For_Ticks=(sw13==0)?Condition_For_Ticks1:0;

//    wire Condition_For_Ticks2 = ((VGA_HORZ_COORD <= 82 && VGA_HORZ_COORD>=78 ) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD <= 162 && VGA_HORZ_COORD>=158) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD <= 242 && VGA_HORZ_COORD>=238) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501));
//    wire Condition_For_Ticks1 = ((VGA_HORZ_COORD == 80) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD == 160) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD == 240) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD == 320) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD == 400) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501))||((VGA_HORZ_COORD == 480) && (VGA_VERT_COORD <= 511 && VGA_VERT_COORD>= 501)) ;
    //assign Condition_For_Grid_A = (sw13==0)?((sw14 == 0) ? (Condition_For_Grid_A0||Condition_For_Grid_A2) : (Condition_For_Grid_A1||Condition_For_Grid_A2)):0;
// Please modify below codes to change the background color and to display ticks defined above
    wire Condtion_For_Dots = ((VGA_HORZ_COORD%80==0)&&(VGA_VERT_COORD%8==0))||((VGA_HORZ_COORD%16==0)&&(VGA_VERT_COORD%64==0));
    
//  always@(posedge clk_2Hz)
//    begin
//        //Condition_For_Grid <= (VGA_HORZ_COORD == 639) ||  (VGA_VERT_COORD == 511) ;
////        if(VGA_HORZ_COORD == 639 || VGA_VERT_COORD == 511) 
////        begin
////            VGA_Red_Grid<=4'hC; 
////            VGA_Green_Grid<=4'h0; 
////            VGA_Blue_Grid<=4'h0; 
////        end
//        //else Condition_For_Grid=0;
 
//            if(sw12==1)
//            begin
//                case(counter)
//                    0:begin Rback <= 4'h1; end
//                    1:begin Rback <= 4'h3; end
//                    2:begin Rback <= 4'h5; end
//                    3:begin Rback <= 4'h7; end
//                endcase
//                counter<=counter+1;
//                if (counter==3) counter<=0;
//            end
            
//            if(sw11==1)
//                    begin
//                        case(counter)
//                            0:begin Gback <= 4'h1; end
//                            1:begin Gback <= 4'h3; end
//                            2:begin Gback <= 4'h5; end
//                            3:begin Gback <= 4'h7; end
//                        endcase
//                        counter<=counter+1;
//                        if (counter==3) counter<=0;
//            end
            
//            if(sw10==1)
//                    begin
//                        case(counter)
//                            0:begin Bback <= 4'h1; end
//                            1:begin Bback <= 4'h3; end
//                            2:begin Bback <= 4'h5; end
//                            3:begin Bback <= 4'h7 ; end
//                        endcase
//                        counter<=counter+1;
//                        if (counter==3) counter<=0;
//            end       
//            //VGA_Red_Grid <=  Condition_For_Grid||Condition_For_Ticks ? 4'hC : Rback;
//            //VGA_Green_Grid <= Condition_For_Grid||Condition_For_Ticks ? 4'h0 : 4'hC ;
//            //VGA_Blue_Grid <=  Condition_For_Grid||Condition_For_Ticks ? 4'h0 : 4'hC ;
//        end
        
    assign VGA_Red_Grid = Condition_For_Grid_A0||Condition_For_Grid_A2 ? gr : Rback ;
    assign VGA_Green_Grid = Condition_For_Grid_A0||Condition_For_Grid_A2 ? gg : Gback ;
    assign VGA_Blue_Grid = Condition_For_Grid_A0||Condition_For_Grid_A2 ? gb : Bback ;
    

                            // if true, a red pixel is put at coordinates (VGA_HORZ_COORD, VGA_VERT_COORD), 
     
endmodule

