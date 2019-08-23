`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 10:54:43 PM
// Design Name: 
// Module Name: draw_character
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - file Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module draw_character(
 input [11:0] VGA_HORZ_COORD,//
   input [11:0] VGA_VERT_COORD,//
   input [11:0] max_in,
   input clk_1Hz,
   output  [3:0] VGA_Red_Grid  ,
   output  [3:0] VGA_Green_Grid ,
   output  [3:0] VGA_Blue_Grid 
    );
    
    parameter START_HORZ_COORD = 960;
        parameter START_VERT_COORD = 256;
        parameter START_HORZ_COORD1 = 1000;
        parameter START_VERT_COORD1 = 256;
        parameter START_HORZ_COORD2 = 1040;
        parameter START_VERT_COORD2 = 256;    
        parameter START_HORZ_COORD3 = 1080;
        parameter START_VERT_COORD3 = 256;
    
        parameter LENGTH = 20;
    
        
        wire condition_for_A  = (  (VGA_HORZ_COORD >= START_HORZ_COORD) &&(VGA_HORZ_COORD <= START_HORZ_COORD + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD)   )
                             || (  (VGA_HORZ_COORD >= START_HORZ_COORD) &&(VGA_HORZ_COORD <= START_HORZ_COORD + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD + LENGTH )  )
                             || (  (VGA_VERT_COORD >= START_VERT_COORD) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH *2)&& (VGA_HORZ_COORD == START_HORZ_COORD)   )
                             || (  (VGA_VERT_COORD >= START_VERT_COORD) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH *2)&& (VGA_HORZ_COORD == START_HORZ_COORD+LENGTH  )   );
    //    wire condition_for_equal = (  (VGA_HORZ_COORD >= START_HORZ_COORD_eq) &&(VGA_HORZ_COORD <= START_HORZ_COORD_eq + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD_eq)   )
    //                        ||  (  (VGA_HORZ_COORD >= START_HORZ_COORD_eq) &&(VGA_HORZ_COORD <= START_HORZ_COORD_eq + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD_eq + LENGTH )  );
        
        wire condition1 = (  (VGA_HORZ_COORD >= START_HORZ_COORD) &&(VGA_HORZ_COORD <= START_HORZ_COORD + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD)   );
        wire condition2 = (  (VGA_VERT_COORD >= START_VERT_COORD) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD +LENGTH)   );
        wire condition3 = (  (VGA_VERT_COORD >= START_VERT_COORD+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD+LENGTH)   );
        wire condition4 = (  (VGA_HORZ_COORD >= START_HORZ_COORD) &&(VGA_HORZ_COORD <= START_HORZ_COORD + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD + LENGTH +LENGTH ));
        wire condition5 = (  (VGA_VERT_COORD >= START_VERT_COORD+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD)   );
        wire condition6 = (  (VGA_VERT_COORD >= START_VERT_COORD) &&(VGA_VERT_COORD <= START_VERT_COORD + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD)   );
        wire condition7 = (  (VGA_HORZ_COORD >= START_HORZ_COORD) &&(VGA_HORZ_COORD <= START_HORZ_COORD + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD+LENGTH)   );
        
        wire condition11 = (  (VGA_HORZ_COORD >= START_HORZ_COORD1) &&(VGA_HORZ_COORD <= START_HORZ_COORD1 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD1)   );
        wire condition12 = (  (VGA_VERT_COORD >= START_VERT_COORD1) &&(VGA_VERT_COORD <= START_VERT_COORD1 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD1 +LENGTH)   );
        wire condition13 = (  (VGA_VERT_COORD >= START_VERT_COORD1+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD1 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD1+LENGTH)   );
        wire condition14 = (  (VGA_HORZ_COORD >= START_HORZ_COORD1) &&(VGA_HORZ_COORD <= START_HORZ_COORD1 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD1 + LENGTH +LENGTH ));
        wire condition15 = (  (VGA_VERT_COORD >= START_VERT_COORD1+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD1 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD1)   );
        wire condition16 = (  (VGA_VERT_COORD >= START_VERT_COORD1) &&(VGA_VERT_COORD <= START_VERT_COORD1 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD1)   );
        wire condition17 = (  (VGA_HORZ_COORD >= START_HORZ_COORD1) &&(VGA_HORZ_COORD <= START_HORZ_COORD1 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD1+LENGTH)   );
        
        wire condition21 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2)   );
        wire condition22 = (  (VGA_VERT_COORD >= START_VERT_COORD2) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2 +LENGTH)   );
        wire condition23 = (  (VGA_VERT_COORD >= START_VERT_COORD2+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2+LENGTH)   );
        wire condition24 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2 + LENGTH +LENGTH ));
        wire condition25 = (  (VGA_VERT_COORD >= START_VERT_COORD2+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2)   );
        wire condition26 = (  (VGA_VERT_COORD >= START_VERT_COORD2) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2)   );
        wire condition27 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2+LENGTH)   );
        
        wire condition31 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3)   );
        wire condition32 = (  (VGA_VERT_COORD >= START_VERT_COORD3) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3 +LENGTH)   );
        wire condition33 = (  (VGA_VERT_COORD >= START_VERT_COORD3+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3+LENGTH)   );
        wire condition34 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3 + LENGTH +LENGTH ));
        wire condition35 = (  (VGA_VERT_COORD >= START_VERT_COORD3+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3)   );
        wire condition36 = (  (VGA_VERT_COORD >= START_VERT_COORD3) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3)   );
        wire condition37 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3+LENGTH)   );
    
        //    wire condition21 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2)   );
    //    wire condition22 = (  (VGA_VERT_COORD >= START_VERT_COORD2) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2 +LENGTH)   );
    //    wire condition23 = (  (VGA_VERT_COORD >= START_VERT_COORD2+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2+LENGTH)   );
    //    wire condition24 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2 + LENGTH +LENGTH ));
    //    wire condition25 = (  (VGA_VERT_COORD >= START_VERT_COORD2+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2)   );
    //    wire condition26 = (  (VGA_VERT_COORD >= START_VERT_COORD2) &&(VGA_VERT_COORD <= START_VERT_COORD2 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD2)   );
    //    wire condition27 = (  (VGA_HORZ_COORD >= START_HORZ_COORD2) &&(VGA_HORZ_COORD <= START_HORZ_COORD2 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD2+LENGTH)   );
    
    //    wire condition31 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3)   );
    //    wire condition32 = (  (VGA_VERT_COORD >= START_VERT_COORD3) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3 +LENGTH)   );
    //    wire condition33 = (  (VGA_VERT_COORD >= START_VERT_COORD3+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3+LENGTH)   );
    //    wire condition34 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3 + LENGTH +LENGTH ));
    //    wire condition35 = (  (VGA_VERT_COORD >= START_VERT_COORD3+LENGTH) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH+LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3)   );
    //    wire condition36 = (  (VGA_VERT_COORD >= START_VERT_COORD3) &&(VGA_VERT_COORD <= START_VERT_COORD3 + LENGTH)&& (VGA_HORZ_COORD == START_HORZ_COORD3)   );
    //    wire condition37 = (  (VGA_HORZ_COORD >= START_HORZ_COORD3) &&(VGA_HORZ_COORD <= START_HORZ_COORD3 + LENGTH)&& (VGA_VERT_COORD == START_VERT_COORD3+LENGTH)   );
    
        wire [3:0]  number ;
        wire [3:0]  number1 ;
        wire [3:0]  number2 ;
        wire  [3:0]  number3 ;
        assign number = (max_in / 1000) % 10;
        assign number1 = (max_in / 100) % 10;
        assign number2 = (max_in / 10) % 10;
        assign number3 = (max_in / 1) % 10;
    
    
                //for test only
    //    always @ (posedge clk_1Hz) 
            
    //    begin
    
    //        number <= number + 1;
    //        number1 <= number1 + 1;
    //          number2 <= number2 + 1;
    //        number3 <= number3 + 1;
    
    //        if(number > 8) begin number <= 0; end
    //        if(number1 > 8) begin number1 <= 0; end
    //        if(number2 > 8) begin number2 <= 0; end
    //        if(number3 > 8) begin number3 <= 0; end
    
    //    end
        wire [3:0] VGA_Red_Grid1;
        wire [3:0] VGA_Green_Grid1;
        wire [3:0] VGA_Blue_Grid1;
        wire [3:0] VGA_Red_Grid2;
        wire [3:0] VGA_Green_Grid2;
        wire [3:0] VGA_Blue_Grid2;   
         wire [3:0] VGA_Red_Grid3;
        wire [3:0] VGA_Green_Grid3;
        wire [3:0] VGA_Blue_Grid3;   
         wire [3:0] VGA_Red_Grid4;
        wire [3:0] VGA_Green_Grid4;
        wire [3:0] VGA_Blue_Grid4;
        
        
        assign VGA_Red_Grid1 = (number == 1) ? ((condition2 || condition3) ? 4'hc : 4'h0 ) : 
                              ((number == 2) ? ((condition1 || condition2 || condition5 ||condition4 || condition7 )? 4'hc : 4'h0) :
                              ((number == 3)  ? ((condition1 || condition2 || condition3 ||condition4 || condition7) ? 4'hc : 4'h0) :
                              ((number == 4)?((condition2 || condition3 || condition6 || condition7) ? 4'hc : 4'h0):
                              ((number == 5)?((condition1 || condition3 || condition4 ||condition6 || condition7) ? 4'hc : 4'h0):
                              ((number == 6)?((condition1 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hc : 4'h0):
                              ((number == 7)?((condition1 || condition2 || condition3) ? 4'hc : 4'h0):
                              ((number == 8)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hc : 4'h0):
                              ((number == 9)?((condition1 || condition2 || condition3 || condition4 || condition6 || condition7) ? 4'hc : 4'h0):
                              ((number == 0)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 ) ? 4'hc : 4'h0):0)))))))));
       
        assign VGA_Green_Grid1 =(number == 1) ? ((condition2 || condition3) ? 4'hf : 4'h0 ) : 
                                                        ((number == 2) ? ((condition1 || condition2 || condition5 ||condition4 || condition7 )? 4'hf : 4'h0) :
                                                        ((number == 3)  ? ((condition1 || condition2 || condition3 ||condition4 || condition7) ? 4'hf : 4'h0) :
                                                        ((number == 4)?((condition2 || condition3 || condition6 || condition7) ? 4'hf : 4'h0):
                                                        ((number == 5)?((condition1 || condition3 || condition4 ||condition6 || condition7) ? 4'hf : 4'h0):
                                                        ((number == 6)?((condition1 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hf : 4'h0):
                                                        ((number == 7)?((condition1 || condition2 || condition3) ? 4'hf : 4'h0):
                                                        ((number == 8)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hf : 4'h0):
                                                        ((number == 9)?((condition1 || condition2 || condition3 || condition4 || condition6 || condition7) ? 4'hf : 4'h0):
                                                        ((number == 0)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 ) ? 4'hf : 4'h0):0)))))))));
        
        assign VGA_Blue_Grid1 =(number == 1) ? ((condition2 || condition3) ? 4'hf : 4'h0 ) : 
                                                      ((number == 2) ? ((condition1 || condition2 || condition5 ||condition4 || condition7 )? 4'hf : 4'h0) :
                                                      ((number == 3)  ? ((condition1 || condition2 || condition3 ||condition4 || condition7) ? 4'hf : 4'h0) :
                                                      ((number == 4)?((condition2 || condition3 || condition6 || condition7) ? 4'hf : 4'h0):
                                                      ((number == 5)?((condition1 || condition3 || condition4 ||condition6 || condition7) ? 4'hf : 4'h0):
                                                      ((number == 6)?((condition1 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hf : 4'h0):
                                                      ((number == 7)?((condition1 || condition2 || condition3) ? 4'hf : 4'h0):
                                                      ((number == 8)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 || condition7) ? 4'hf : 4'h0):
                                                      ((number == 9)?((condition1 || condition2 || condition3 || condition4 || condition6 || condition7) ? 4'hf : 4'h0):
                                                      ((number == 0)?((condition1 || condition2 || condition3 || condition4 || condition5 || condition6 ) ? 4'hf : 4'h0):0)))))))));
        
        
        assign VGA_Red_Grid2 = (number1 == 1) ? ((condition12 || condition13) ? 4'hf : 4'h0 ) : 
                                                                            ((number1 == 2) ? ((condition11 || condition12 || condition15 ||condition14 || condition17 )? 4'hf : 4'h0) :
                                                                            ((number1 == 3)  ? ((condition11 || condition12 || condition13 ||condition14 || condition17) ? 4'hf : 4'h0) :
                                                                            ((number1 == 4)?((condition12 || condition13 || condition16 || condition17) ? 4'hf : 4'h0):
                                                                            ((number1 == 5)?((condition11 || condition13 || condition14 ||condition16 || condition17) ? 4'hf : 4'h0):
                                                                            ((number1 == 6)?((condition11 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hf : 4'h0):
                                                                            ((number1 == 7)?((condition11 || condition12 || condition13) ? 4'hf : 4'h0):
                                                                            ((number1 == 8)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hf : 4'h0):
                                                                            ((number1 == 9)?((condition11 || condition12 || condition13 || condition14 || condition16 || condition17) ? 4'hf : 4'h0):
                                                                            ((number1 == 0)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 ) ? 4'hf : 4'h0):0)))))))));
         
          assign VGA_Green_Grid2 =(number1 == 1) ? ((condition12 || condition13) ? 4'hC : 4'h0 ) : 
                                                          ((number1 == 2) ? ((condition11 || condition12 || condition15 ||condition14 || condition17 )? 4'hC : 4'h0) :
                                                          ((number1 == 3)  ? ((condition11 || condition12 || condition13 ||condition14 || condition17) ? 4'hC : 4'h0) :
                                                          ((number1 == 4)?((condition12 || condition13 || condition16 || condition17) ? 4'hC : 4'h0):
                                                          ((number1 == 5)?((condition11 || condition13 || condition14 ||condition16 || condition17) ? 4'hC : 4'h0):
                                                          ((number1 == 6)?((condition11 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hC : 4'h0):
                                                          ((number1 == 7)?((condition11 || condition12 || condition13) ? 4'hC : 4'h0):
                                                          ((number1 == 8)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hC : 4'h0):
                                                          ((number1 == 9)?((condition11 || condition12 || condition13 || condition14 || condition16 || condition17) ? 4'hC : 4'h0):
                                                          ((number1 == 0)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 ) ? 4'hC : 4'h0):0)))))))));
          
          assign VGA_Blue_Grid2 =(number1 == 1) ? ((condition12 || condition13) ? 4'hf : 4'h0 ) : 
                                                        ((number1 == 2) ? ((condition11 || condition12 || condition15 ||condition14 || condition17 )? 4'hf : 4'h0) :
                                                        ((number1 == 3)  ? ((condition11 || condition12 || condition13 ||condition14 || condition17) ? 4'hf : 4'h0) :
                                                        ((number1 == 4)?((condition12 || condition13 || condition16 || condition17) ? 4'hf : 4'h0):
                                                        ((number1 == 5)?((condition11 || condition13 || condition14 ||condition16 || condition17) ? 4'hf : 4'h0):
                                                        ((number1 == 6)?((condition11 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hf : 4'h0):
                                                        ((number1 == 7)?((condition11 || condition12 || condition13) ? 4'hf : 4'h0):
                                                        ((number1 == 8)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 || condition17) ? 4'hf : 4'h0):
                                                        ((number1 == 9)?((condition11 || condition12 || condition13 || condition14 || condition16 || condition17) ? 4'hf : 4'h0):
                                                        ((number1 == 0)?((condition11 || condition12 || condition13 || condition14 || condition15 || condition16 ) ? 4'hf : 4'h0):0)))))))));
        assign VGA_Red_Grid3 = (number2 == 1) ? ((condition22 || condition23) ? 4'hc : 4'h0 ) : 
                                                        ((number2 == 2) ? ((condition21 || condition22 || condition25 ||condition24 || condition27 )? 4'hc : 4'h0) :
                                                        ((number2 == 3)  ? ((condition21 || condition22 || condition23 ||condition24 || condition27) ? 4'hc : 4'h0) :
                                                        ((number2 == 4)?((condition22 || condition23 || condition26 || condition27) ? 4'hc : 4'h0):
                                                        ((number2 == 5)?((condition21 || condition23 || condition24 ||condition26 || condition27) ? 4'hc : 4'h0):
                                                        ((number2 == 6)?((condition21 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'hc : 4'h0):
                                                        ((number2 == 7)?((condition21 || condition22 || condition23) ? 4'hc : 4'h0):
                                                        ((number2 == 8)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'hc : 4'h0):
                                                        ((number2 == 9)?((condition21 || condition22 || condition23 || condition24 || condition26 || condition27) ? 4'hc : 4'h0):
                                                        ((number2 == 0)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 ) ? 4'hc : 4'h0):0)))))))));
         
          assign VGA_Green_Grid3 =(number2 == 1) ? ((condition12 || condition13) ? 4'ha : 4'h0 ) : 
                                                ((number2 == 2) ? ((condition21 || condition22 || condition25 ||condition24 || condition27 )? 4'ha : 4'h0) :
                                                ((number2 == 3)  ? ((condition21 || condition22 || condition23 ||condition24 || condition27) ? 4'ha : 4'h0) :
                                                ((number2 == 4)?((condition22 || condition23 || condition26 || condition27) ? 4'ha : 4'h0):
                                                ((number2 == 5)?((condition21 || condition23 || condition24 ||condition26 || condition27) ? 4'ha : 4'h0):
                                                ((number2 == 6)?((condition21 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'ha : 4'h0):
                                                ((number2 == 7)?((condition21 || condition22 || condition23) ? 4'ha : 4'h0):
                                                ((number2 == 8)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'ha : 4'h0):
                                                ((number2 == 9)?((condition21 || condition22 || condition23 || condition24 || condition26 || condition27) ? 4'ha : 4'h0):
                                                ((number2 == 0)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 ) ? 4'ha : 4'h0):0)))))))));
          
          assign VGA_Blue_Grid3 =(number2 == 1) ? ((condition22 || condition23) ? 4'hf : 4'h0 ) : 
                                                      ((number2 == 2) ? ((condition21 || condition22 || condition25 ||condition24 || condition27 )? 4'hf : 4'h0) :
                                                      ((number2 == 3)  ? ((condition21 || condition22 || condition23 ||condition24 || condition27) ? 4'hf : 4'h0) :
                                                      ((number2 == 4)?((condition22 || condition23 || condition26 || condition27) ? 4'hf : 4'h0):
                                                      ((number2 == 5)?((condition21 || condition23 || condition24 ||condition26 || condition27) ? 4'hf : 4'h0):
                                                      ((number2 == 6)?((condition21 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'hf : 4'h0):
                                                      ((number2 == 7)?((condition21 || condition22 || condition23) ? 4'hf : 4'h0):
                                                      ((number2 == 8)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 || condition27) ? 4'hf : 4'h0):
                                                      ((number2 == 9)?((condition21 || condition22 || condition23 || condition24 || condition26 || condition27) ? 4'hf : 4'h0):
                                                      ((number2 == 0)?((condition21 || condition22 || condition23 || condition24 || condition25 || condition26 ) ? 4'hf : 4'h0):0)))))))));
                                                      
        assign VGA_Red_Grid4 = (number3 == 1) ? ((condition32 || condition33) ? 4'hf : 4'h0 ) : 
                                                  ((number3 == 2) ? ((condition31 || condition32 || condition35 ||condition34 || condition37 )? 4'hf : 4'h0) :
                                                  ((number3 == 3)  ? ((condition31 || condition32 || condition33 ||condition34 || condition37) ? 4'hf : 4'h0) :
                                                  ((number3 == 4)?((condition32 || condition33 || condition36 || condition37) ? 4'hf : 4'h0):
                                                  ((number3 == 5)?((condition31 || condition33 || condition34 ||condition36 || condition37) ? 4'hf : 4'h0):
                                                  ((number3 == 6)?((condition31 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hf : 4'h0):
                                                  ((number3 == 7)?((condition31 || condition32 || condition33) ? 4'hf : 4'h0):
                                                  ((number3 == 8)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hf : 4'h0):
                                                  ((number3 == 9)?((condition31 || condition32 || condition33 || condition34 || condition36 || condition37) ? 4'hf : 4'h0):
                                                  ((number3 == 0)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 ) ? 4'hf : 4'h0):0)))))))));
        assign VGA_Green_Grid4 = (number3 == 1) ? ((condition32 || condition33) ? 4'hc : 4'h0 ) : 
                                            ((number3 == 2) ? ((condition31 || condition32 || condition35 ||condition34 || condition37 )? 4'hc : 4'h0) :
                                            ((number3 == 3)  ? ((condition31 || condition32 || condition33 ||condition34 || condition37) ? 4'hc : 4'h0) :
                                            ((number3 == 4)?((condition32 || condition33 || condition36 || condition37) ? 4'hc : 4'h0):
                                            ((number3 == 5)?((condition31 || condition33 || condition34 ||condition36 || condition37) ? 4'hc : 4'h0):
                                            ((number3 == 6)?((condition31 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hc : 4'h0):
                                            ((number3 == 7)?((condition31 || condition32 || condition33) ? 4'hc : 4'h0):
                                            ((number3 == 8)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hc : 4'h0):
                                            ((number3 == 9)?((condition31 || condition32 || condition33 || condition34 || condition36 || condition37) ? 4'hc : 4'h0):
                                            ((number3 == 0)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 ) ? 4'hc : 4'h0):0)))))))));
        assign VGA_Blue_Grid4 = (number3 == 1) ? ((condition32 || condition33) ? 4'hf : 4'h0 ) : 
                                      ((number3 == 2) ? ((condition31 || condition32 || condition35 ||condition34 || condition37 )? 4'hf : 4'h0) :
                                      ((number3 == 3)  ? ((condition31 || condition32 || condition33 ||condition34 || condition37) ? 4'hf : 4'h0) :
                                      ((number3 == 4)?((condition32 || condition33 || condition36 || condition37) ? 4'hf : 4'h0):
                                      ((number3 == 5)?((condition31 || condition33 || condition34 ||condition36 || condition37) ? 4'hf : 4'h0):
                                      ((number3 == 6)?((condition31 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hf : 4'h0):
                                      ((number3 == 7)?((condition31 || condition32 || condition33) ? 4'hf : 4'h0):
                                      ((number3 == 8)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 || condition37) ? 4'hf : 4'h0):
                                      ((number3 == 9)?((condition31 || condition32 || condition33 || condition34 || condition36 || condition37) ? 4'hf : 4'h0):
                                      ((number3 == 0)?((condition31 || condition32 || condition33 || condition34 || condition35 || condition36 ) ? 4'hf : 4'h0):0)))))))));
    
        assign VGA_Red_Grid = VGA_Red_Grid1 |VGA_Red_Grid2|VGA_Red_Grid3|VGA_Red_Grid4;
        assign VGA_Green_Grid = VGA_Green_Grid1 |VGA_Green_Grid2|VGA_Green_Grid3|VGA_Green_Grid4;
        assign VGA_Blue_Grid = VGA_Blue_Grid1 |VGA_Blue_Grid2|VGA_Blue_Grid3|VGA_Blue_Grid4;

endmodule
