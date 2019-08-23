`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 05:56:17 PM
// Design Name: 
// Module Name: Draw_Waveform_B
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


module Draw_Waveform_B(
    input clk_30Hz,
    input [11:0] max_in,
    input [3:0] br,
    input [3:0] bg,
    input [3:0] bb,
    input clk_sample,
    input clk_3Hz,
    input sw8,
    input sw9,
    input [3:0] wr,
    input [3:0] wg,
    input [3:0] wb,
    input [11:0] mic_in,
    input clk_2Hz,
    input [11:2] wave_sample,////5
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output [3:0] VGA_Red_waveform,
    output [3:0] VGA_Green_waveform,
    output [3:0] VGA_Blue_waveform
    );
    reg [11:0] Sample_Memory[1279:0];
        reg [10:0] i;
            
            //Each wave_sample is displayed on the screen from left to right. 
        always @ (posedge clk_sample) begin
            i = (i==1279) ? 0 : i + 1;
            //if (wave_sample-600>=0)begin
            Sample_Memory[i] <= wave_sample; 
        end      
        
        wire [11:0] in;
        assign in = (sw9==0 ) ? max_in : mic_in;
        //origin
        /*
        parameter ox = 10'd640, oy = 10'd512;
        reg [3:0] r;
        reg [3:0] g;
        reg [3:0] b;
        integer rx, ry;
        always @ (posedge clk_sample) begin
            rx = VGA_HORZ_COORD - ox;
            ry = VGA_VERT_COORD - oy;
        end  
        assign VGA_Red_waveform   = (rx*rx + ry*ry <= 40000) ? 4'h0 : 4'h0;
        assign VGA_Green_waveform = (rx*rx + ry*ry <= 40000) ? 4'hC : 4'h0;
        assign VGA_Blue_waveform  = (rx*rx + ry*ry <= 40000) ? 4'h0 : 4'h0;
        */
        wire [3:0] VGA_Red_waveform1;
        wire [3:0] VGA_Green_waveform1;
        wire [3:0] VGA_Blue_waveform1;
        
        //boom to a circle
        //origin
        wire [3:0] VGA_Red_waveform2;
        wire [3:0] VGA_Green_waveform2;
        wire [3:0] VGA_Blue_waveform2;
        wire [3:0] VGA_Red_waveform3;
        wire [3:0] VGA_Green_waveform3;
        wire [3:0] VGA_Blue_waveform3;
        //origin pos
        reg [31:0] x0;
        reg [31:0] y0;
        reg [10 :0] n = 0;
        
        always @ (posedge clk_3Hz) begin
            case (n)
                0: begin
                    x0 <= 1800;
                    y0 <= 1785;
                   end
                1:
                    begin
                    x0 <= 1840;
                    y0 <= 1185;                   
                    end
                2:
                    begin
                    x0 <= 1880;
                    y0 <= 1956;                   
                    end                
                3:
                    begin
                    x0 <= 1920;
                    y0 <= 2016;                   
                    end
                4:
                    begin
                    x0 <= 1960;
                    y0 <= 1005;                   
                    end                            
                5:
                    begin
                    x0 <= 2000;
                    y0 <= 963;                   
                    end
                                    
                6:
                    begin
                    x0 <= 2040;
                    y0 <= 927;                   
                    end                                    
                                    
                7:
                    begin
                    x0 <= 2080;
                    y0 <= 1785;                   
                    end                                    
                            
                8:
                    begin
                    x0 <= 1800;
                    y0 <= 1785;                   
                    end                                    
                                    
                9:
                    begin
                    x0 <= 3000;
                    y0 <= 2202;                   
                    end                                    
                                    
                10:
                    begin
                    x0 <= 2080;
                    y0 <= 2175;                   
                    end                                    
                11:
                    begin
                    x0 <= 2240;
                    y0 <= 801;                   
                    end                                    
                12:
                    begin
                    x0 <= 2400;
                    y0 <= 2319;                   
                    end                                    
                13:
                    begin
                    x0 <= 2800;
                    y0 <= 2298;                   
                    end
                13:
                    begin
                    x0 <= 3200;
                    y0 <= 2016;                   
                    end
                13:
                    begin
                    x0 <= 3320;
                    y0 <= 1284;                   
                    end                
            endcase
            n <= ( n >= 13) ? 0 : n + 1;
        
        end 

        //color
        reg [3:0] r;
        reg [3:0] g;
        reg [3:0] b;
        reg [10:0] m = 5;
        always @ (posedge clk_3Hz) begin
     case (m) 
                   0 : begin
                           r <= 0;
                           g <= 1;
                           b <= 1;
                       end
                   1 : begin
                           r <= 1;
                           g <= 0;
                           b <= 0;
                       end
                   2 : begin
                           r <= 0;
                           g <= 0;
                           b <= 1;
                       end
                   3: begin
                           r <= 0;
                           g <= 1;
                           b <= 2;
                       end
                   4: begin
                           r <= 2;
                           g <= 0;
                           b <= 2;
                       end
                   5: begin
                           r <= 3;
                           g <= 1;
                           b <= 3;
                       end                    
                   6: begin
                           r <= 0;
                           g <= 0;
                           b <= 2;
                       end    
                   7: begin
                           r <= 1;
                           g <= 0;
                           b <= 3;
                       end   
                   8: begin
                           r <= 3;
                           g <= 0;
                           b <= 1;
                       end                 
                   9: begin
                           r <= 4;
                           g <= 2;
                           b <= 2;
                       end    
                   10: begin
                           r <= 3;
                           g <= 1;
                           b <= 1;
                       end   
                   11: begin
                           r <= 1;
                           g <= 1;
                           b <= 3;
                       end    
                                                                          
               endcase
            m <= ( m >= 11) ? 0 : m+ 1;
        
        end   
        reg [11:0] mic_in_store;
        always @ (posedge clk_sample) begin
            mic_in_store <= mic_in;       
        end      
        wire [11:0] selector;
        reg [11:0] selector1;
        reg [11:0] selector2 = 0;
        
         always @(posedge clk_30Hz) begin
       //        if(sw == 0) //max 
       //        begin
       selector2 <= 0;
       begin
                            if(in <=2100) begin
       selector2 <= selector2 + 1;
      
     end
     else if(in >= 2100 && in < 2200) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2200 && in < 2300) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2300 && in < 2400) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2400 && in < 2500) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2500 && in <= 2600) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2600 && in <= 2700) begin
       selector2 <= selector2 + 1;
     end  
     else if(in >= 2700 && in <= 2800) begin
       selector2 <= selector2 + 1;
     end  
     else if(in >= 2800 && in <= 2900) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 2900 && in <= 3000) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 3000 && in <= 3100 ) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 3100 && in <= 3200 ) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 3200 && in <= 3300 ) begin
       selector2 <= selector2 + 1;
     end
     else if(in >= 3300 && in <= 3400 ) begin
       selector2 <= selector2 + 1;
     end      
     else if(in >= 3400 && in <= 3500 ) begin
       selector2 <= selector2 + 1;
     end      
     else if(in >= 3500 && in <= 3600 ) begin
       selector2 <= selector2 + 1;
     end  
     else if(in >= 3600 && in <= 3700 ) begin
       selector2 <= selector2 + 1;
    end 
    else if(in >= 3700 && in <= 3800 ) begin
       selector2 <= selector2 + 1;
   end 
   else if(in >= 3800 && in <= 3900 ) begin
       selector2 <= selector2 + 1;
   end 
   else if(in >= 3900  ) begin
       selector2 <= selector2 + 1;
  end                       

       
               
               
        end
       //        end
               //max_in <= max; 
                if(in <=2100) begin
                   selector1 <= 0;
               
              end
              else if(in >= 2100 && in < 2200) begin
                   selector1  <= 1;
              end
              else if(in >= 2200 && in < 2300) begin
                   selector1  <= 2;
              end
              else if(in >= 2300 && in < 2400) begin
                   selector1  <= 3;
              end
              else if(in >= 2400 && in < 2500) begin
                   selector1  <= 4;
              end
              else if(in >= 2500 && in <= 2600) begin
                   selector1  <= 5;
              end
              else if(in >= 2600 && in <= 2700) begin
                   selector1  <= 6;
              end  
              else if(in >= 2700 && in <= 2800) begin
                   selector1  <= 7;
              end  
              else if(in >= 2800 && in <= 2900) begin
                   selector1  <= 8;
              end
              else if(in >= 2900 && in <= 3000) begin
                   selector1  <= 9;
              end
              else if(in >= 3000 && in <= 3100 ) begin
                   selector1  <= 10;
              end
              else if(in >= 3100 && in <= 3200 ) begin
                   selector1  <= 11;
              end
              else if(in >= 3200 && in <= 3300 ) begin
                   selector1  <= 12;
              end
              else if(in >= 3300 && in <= 3400 ) begin
                   selector1  <= 13;
              end      
              else if(in >= 3400 && in <= 3500 ) begin
                   selector1  <= 14;
              end      
              else if(in >= 3500 && in <= 3600 ) begin
                   selector1  <= 15;
              end  
              else if(in >= 3600 && in <= 3700 ) begin
                                  selector1  <= 16;
             end 
             else if(in >= 3700 && in <= 3800 ) begin
                                 selector1  <= 17;
            end 
            else if(in >= 3800 && in <= 3900 ) begin
                                selector1  <= 18;
            end 
            else if(in >= 3900  ) begin
                    selector1  <= 19;
           end                       
           end
        /*
        assign VGA_Red_waveform2 = ( (((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) >= 624100 ) &&
                                     (((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) <= 640000 ) ) ? 4'h0 : 0;
        assign VGA_Red_waveform2 = ( (((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) >= 624100  ) &&
                                    (((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) <= 640000 ) ) ? 4'h0 : 0;
        assign VGA_Red_waveform2 = ( (((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) >= 624100 ) &&
                                   ( ((VGA_HORZ_COORD * 4 - 1800))*((VGA_HORZ_COORD * 4 - 1800))  + ((VGA_VERT_COORD * 3 - 1785)) * ((VGA_VERT_COORD * 3 - 1785)) <= 640000 ) ) ? 4'h0 : 0;
        */
        //ring
        assign selector = (sw8 ==0) ? selector1 : selector2;
        wire [3:0] VGA_Red_waveformC0;
        wire [3:0] VGA_Green_waveformC0;
        wire [3:0] VGA_Blue_waveformC0;
                wire [3:0] VGA_Red_waveformC1;
        wire [3:0] VGA_Green_waveformC1;
        wire [3:0] VGA_Blue_waveformC1;
                wire [3:0] VGA_Red_waveformC2;
        wire [3:0] VGA_Green_waveformC2;
        wire [3:0] VGA_Blue_waveformC2;
                wire [3:0] VGA_Red_waveformC3;
        wire [3:0] VGA_Green_waveformC3;
        wire [3:0] VGA_Blue_waveformC3;
                wire [3:0] VGA_Red_waveformC4;
        wire [3:0] VGA_Green_waveformC4;
        wire [3:0] VGA_Blue_waveformC4;
        wire [3:0] VGA_Red_waveform0;
        wire [3:0] VGA_Green_waveform0;
        wire [3:0] VGA_Blue_waveform0;
        wire [3:0] VGA_Red_waveform4;
        wire [3:0] VGA_Green_waveform4;
        wire [3:0] VGA_Blue_waveform4;
        wire [3:0] VGA_Red_waveform5;
        wire [3:0] VGA_Green_waveform5;
        wire [3:0] VGA_Blue_waveform5;
        wire [3:0] VGA_Red_waveform6;
        wire [3:0] VGA_Green_waveform6;
        wire [3:0] VGA_Blue_waveform6;
        wire [3:0] VGA_Red_waveform7;
        wire [3:0] VGA_Green_waveform7;
        wire [3:0] VGA_Blue_waveform7;
        wire [3:0] VGA_Red_waveform8;
        wire [3:0] VGA_Green_waveform8;
        wire [3:0] VGA_Blue_waveform8;
                wire [3:0] VGA_Red_waveform9;
        wire [3:0] VGA_Green_waveform9;
        wire [3:0] VGA_Blue_waveform9;
                wire [3:0] VGA_Red_waveform10;
        wire [3:0] VGA_Green_waveform10;
        wire [3:0] VGA_Blue_waveform10;
                wire [3:0] VGA_Red_waveform11;
        wire [3:0] VGA_Green_waveform11;
        wire [3:0] VGA_Blue_waveform11;
                wire [3:0] VGA_Red_waveform12;
        wire [3:0] VGA_Green_waveform12;
        wire [3:0] VGA_Blue_waveform12;      
                wire [3:0] VGA_Red_waveform13;
        wire [3:0] VGA_Green_waveform13;
        wire [3:0] VGA_Blue_waveform13;  
                        wire [3:0] VGA_Red_waveform14;
wire [3:0] VGA_Green_waveform14;
wire [3:0] VGA_Blue_waveform14;  
                wire [3:0] VGA_Red_waveform15;
wire [3:0] VGA_Green_waveform15;
wire [3:0] VGA_Blue_waveform15;  

                wire [3:0] VGA_Red_waveform16;
        wire [3:0] VGA_Green_waveform16;
        wire [3:0] VGA_Blue_waveform16;  
        
                        wire [3:0] VGA_Red_waveform17;
wire [3:0] VGA_Green_waveform17;
wire [3:0] VGA_Blue_waveform17;  

                wire [3:0] VGA_Red_waveform18;
        wire [3:0] VGA_Green_waveform18;
        wire [3:0] VGA_Blue_waveform18;  
        
                        wire [3:0] VGA_Red_waveform19;
wire [3:0] VGA_Green_waveform19;
wire [3:0] VGA_Blue_waveform19;  

        
        //1st r0 = 
//        //inner
//        //1st outer
//        assign VGA_Red_waveform2 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 577600 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= (( 608400)  ) ) ) ? 0 : 0;
//       assign VGA_Green_waveform2 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=577600 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= (( 608400)  ) ) ) ? 0 : 0;
//       assign VGA_Blue_waveform2 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 577600 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=(( 608400)) ) ) ? 4'hc : 0;
      
//        assign VGA_Red_waveform3 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 608400 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= (( 624100)  ) ) ) ? wr : 0;
//       assign VGA_Green_waveform3 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 608400 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= (( 624100)  ) ) ) ? wg : 0;
//       assign VGA_Blue_waveform3 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 608400 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=(( 624100)) ) ) ?  wb : 0;
        assign VGA_Red_waveform0 = ( (  (  VGA_HORZ_COORD * 4 - 2560) * ( VGA_HORZ_COORD * 4 - 2560 )  + ( VGA_VERT_COORD * 3 - 1536 )  * (VGA_VERT_COORD * 3 - 1536  )  <= ( 2200* 20 ) )  &&  ( selector >= 0  )  )?  wr : 0  ;
        assign VGA_Green_waveform0 = ( (  (  VGA_HORZ_COORD * 4 - 2560) * ( VGA_HORZ_COORD * 4 - 2560 )  + ( VGA_VERT_COORD * 3 - 1536 )  * (VGA_VERT_COORD * 3 - 1536  )  <= ( 2200* 20 ) )  &&  ( selector >= 0  )  )?  wg : 0  ;
        assign VGA_Blue_waveform0 =  ( (  (  VGA_HORZ_COORD * 4 - 2560) * ( VGA_HORZ_COORD * 4 - 2560 )  + ( VGA_VERT_COORD * 3 - 1536 )  * (VGA_VERT_COORD * 3 - 1536  )  <= ( 2200* 20 ) )  &&  ( selector >= 0  )  )?  wb : 0  ;


        assign VGA_Red_waveform1 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 20) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*35 )  )  && (  selector >= 1  ) )?  4'h1 : 0  ;
        assign VGA_Green_waveform1 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 20) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*35 )  )  && (  selector >= 1  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform1 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 20) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*35 )  )  && (  selector >= 1  ) )?  4'h9 : 0  ;

        assign VGA_Red_waveform2 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 35) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200* 60 )  )  && (  selector >= 2  ) )?  4'h2 : 0  ;
        assign VGA_Green_waveform2 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*35) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*60 )  )  && (  selector >= 2  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform2 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 35) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*60 )  )  && (  selector >=2  ) )?  4'h8 : 0  ;

        
        assign VGA_Red_waveform3 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 60) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*90 )  )  && (  selector >= 3  ) )?  4'h3 : 0  ;
        assign VGA_Green_waveform3 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 60) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*90 )  )  && (  selector >= 3  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform3 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 60) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*90 )  )  && (  selector >= 3  ) )?  4'h7 : 0  ;


        assign VGA_Red_waveform4 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 90) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*120 )  )  && (  selector >= 4  ) )?  4'h4 : 0  ;
        assign VGA_Green_waveform4 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 90) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*120 )  )  && (  selector >= 4  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform4 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 90) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*120 )  )  && (  selector >= 4  ) )?  4'h6 : 0  ;

        
        assign VGA_Red_waveform5 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 120) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*145 )  )  && (  selector >= 5  ) )?  4'h5 : 0  ;
        assign VGA_Green_waveform5 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*120) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*145 )  )  && (  selector >=5  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform5 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 120) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*145 )  )  && (  selector >= 5  ) )?  4'h5 : 0  ;

        assign VGA_Red_waveform6 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 145) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*180 )  )  && (  selector >= 6  ) )?  4'h6 : 0  ;
        assign VGA_Green_waveform6 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*145) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*180 )  )  && (  selector >=6  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform6 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 145) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*180 )  )  && (  selector >= 6  ) )?  4'h4 : 0  ;

        assign VGA_Red_waveform7 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 180) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*220 )  )  && (  selector >= 7  ) )?  4'h7 : 0  ;
        assign VGA_Green_waveform7 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*180) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*220 )  )  && (  selector >= 7  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform7 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 180) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*220 )  )  && (  selector >= 7  ) )?  4'h3 : 0  ;

        assign VGA_Red_waveform8 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*220) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*260 )  )  && (  selector >= 8  ) )?  4'h8 : 0  ;
        assign VGA_Green_waveform8 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 220) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*260 )  )  && (  selector >= 8  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform8 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*220) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*260 )  )  && (  selector >= 8  ) )?  4'h2 : 0  ;

        assign VGA_Red_waveform9 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 260) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*310 )  )  && (  selector >= 9  ) )?  4'hA : 0  ;
        assign VGA_Green_waveform9 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 260) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*310 )  )  && (  selector >= 9  ) )?  4'h0 : 0  ;
        assign VGA_Blue_waveform9 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 260) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*310 )  )  && (  selector >= 9  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform10 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*310) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*380 )  )  && (  selector >= 10  ) )?  4'h9 : 0  ;
        assign VGA_Green_waveform10 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*310) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*380 )  )  && (  selector >= 10  ) )?  4'h1 : 0  ;
        assign VGA_Blue_waveform10 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 310) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*380 )  )  && (  selector >= 10  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform11 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 380) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*450 )  )  && (  selector >= 11  ) )?  4'h8 : 0  ;
        assign VGA_Green_waveform11 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 380) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*450 )  )  && (  selector >= 11  ) )?  4'h2 : 0  ;
        assign VGA_Blue_waveform11 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 380) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*450)  )  && (  selector >=11  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform12 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 450) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*550 )  )  && (  selector >=12 ) )?  4'h7 : 0  ;
        assign VGA_Green_waveform12 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 450) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*550 )  )  && (  selector >=12  ) )?  4'h3 : 0  ;
        assign VGA_Blue_waveform12 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 450) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*550 )  )  && (  selector >= 12  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform13 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*650 )  )  && (  selector >= 13  ) )?  4'h6 : 0  ;
        assign VGA_Green_waveform13 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*650 )  )  && (  selector >= 13  ) )?  4'h4 : 0  ;
        assign VGA_Blue_waveform13 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*650 )  )  && (  selector >= 13  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform14 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*800 )  )  && (  selector >= 14  ) )?  4'h5 : 0  ;
        assign VGA_Green_waveform14 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200*650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*800 )  )  && (  selector >= 14  ) )?  4'h5 : 0  ;
        assign VGA_Blue_waveform14 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*800 )  )  && (  selector >= 14  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform15 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 800) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1000 )  )  && (  selector >= 15  ) )?  4'h4 : 0  ;
        assign VGA_Green_waveform15 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 800) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1000 )  )  && (  selector >= 15  ) )?  4'h6 : 0  ;
        assign VGA_Blue_waveform15 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 800) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1000 )  )  && (  selector >= 15  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform16 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1000) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1300 )  )  && (  selector >= 16 ) )?  4'h3 : 0  ;
        assign VGA_Green_waveform16 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1000) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1300 )  )  && (  selector >= 16 ) )?  4'h7 : 0  ;
        assign VGA_Blue_waveform16 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1000) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1300 )  )  && (  selector >= 16  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform17 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1300) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1550 )  )  && (  selector >= 17  ) )?  4'h2 : 0  ;
        assign VGA_Green_waveform17 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1300) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1550 )  )  && (  selector >=17  ) )?  4'h8 : 0  ;
        assign VGA_Blue_waveform17 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1300) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1550 )  )  && (  selector >= 17  ) )?  4'h0 : 0  ;

        assign VGA_Red_waveform18 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1650 )  )  && (  selector >= 18  ) )?  4'h1 : 0  ;
        assign VGA_Green_waveform18 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1650 )  )  && (  selector >= 18  ) )?  4'h9 : 0  ;
        assign VGA_Blue_waveform18 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1550) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1650 )  )  && (  selector >= 18  ) )?  4'h0: 0  ;

        assign VGA_Red_waveform19 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1750 )  )  && (  selector >= 19  ) )?  4'h0 : 0  ;
        assign VGA_Green_waveform19 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1750 )  )  && (  selector >= 19  ) )?  4'hA : 0  ;
        assign VGA_Blue_waveform19 = ( ( ( VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560  ) +  (  VGA_VERT_COORD * 3 - 1536) *  (  VGA_VERT_COORD * 3 - 1536)  >=  (  2200* 1650) )  && (  (VGA_HORZ_COORD * 4 - 2560 ) * (VGA_HORZ_COORD * 4 - 2560 ) +  ( VGA_VERT_COORD * 3 - 1536)  *  (  VGA_VERT_COORD * 3 - 1536) <= (  2200*1750 )  )  && (  selector >= 19  ) )?  4'h0: 0  ;

//       assign VGA_Green_waveform0 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=2200* 100) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= (( 2200*150)  ) )  &&  (selector >= 0) ) ? 4'h0: 0;
//       assign VGA_Blue_waveform0 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= 2200* 100 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=(( 2200*150)) )  &&  (selector >= 0) ) ?  4'hA : 0;
                                    
//        assign VGA_Red_waveform1 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= ( 2200 * 150) ) &&
//                                       (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 250)  ) ) &&  (selector >= 1)  ) ?  4'h1 : 0;
//         assign VGA_Green_waveform1 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= (2200 * 150) ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 250)  ) )  &&  (selector >= 1) ) ? 0 : 0;
//         assign VGA_Blue_waveform1 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= ( 2200 * 150) ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=((2200 * 250)) )  &&  (selector >= 1) ) ? 4'hA : 0;
                                      
//        assign VGA_Red_waveform2 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= ( 2200 * 250) ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 350)  ) ) &&  (selector >= 2)  ) ? 4'h2 : 0;
//         assign VGA_Green_waveform2 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= (2200 * 250) ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 350)  ) )  &&  (selector >= 2) ) ? 4'h0 : 0;
//         assign VGA_Blue_waveform2 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >= (2200 * 250) ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=((2200 * 350)) )  &&  (selector >= 2) ) ? 4'hA : 0;
    
//        assign VGA_Red_waveform3 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 350 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 500)  ) )  &&  (selector >= 3)  ) ? 4'h3 : 0;
//        assign VGA_Green_waveform3 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 350 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 500)  ) ) &&  (selector >= 3)  ) ? 0 : 0;
//        assign VGA_Blue_waveform3 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 350 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 500)  ) )  &&  (selector >= 3)  ) ? 4'hA : 0;

//        assign VGA_Red_waveform4 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 500 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 600)  ) )  &&  (selector >= 4) ) ? 4'h4 : 0;
//        assign VGA_Green_waveform4 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 500 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 600)  ) )  &&  (selector >= 4)  ) ? 0 : 0;
//        assign VGA_Blue_waveform4 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 500 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= ((2200 * 600)  ) )  &&  (selector >= 4)  ) ? 4'hA : 0;
                                     
//         assign VGA_Red_waveform5 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 600 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 700 ) &&  (selector >= 5)  ) ? 4'h5 : 0;
//         assign VGA_Green_waveform5 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *600 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 * 700 )  &&  (selector >= 5) ) ? 0 : 0;
//         assign VGA_Blue_waveform5 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *600 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 700 )  &&  (selector >=5) ) ? 4'hA : 0;

//          assign VGA_Red_waveform6 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 700 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 800 )  &&  (selector >= 6) ) ? 4'h6 : 0;
//         assign VGA_Green_waveform6 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *700 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *800 ) &&  (selector >= 6)  ) ? 0 : 0;
//         assign VGA_Blue_waveform6 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *700 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 800 ) &&  (selector >= 6)  ) ? 4'hA : 0;
     
//           assign VGA_Red_waveform7 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 7)  ) ? 4'h7 : 0;
//         assign VGA_Green_waveform7 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 ) &&  (selector >= 7)  ) ? 0 : 0;
//         assign VGA_Blue_waveform7 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 7)  ) ? 4'hA : 0;

//           assign VGA_Red_waveform8 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 )  &&  (selector >= 8) ) ? 4'h8 : 0;
//         assign VGA_Green_waveform8 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 ) &&  (selector >= 8)  ) ? 0 : 0;
//         assign VGA_Blue_waveform8 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 )  &&  (selector >= 8) ) ? 4'hA : 0;

//           assign VGA_Red_waveform9 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 9)  ) ? 4'h9 : 0;
//         assign VGA_Green_waveform9 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 )  &&  (selector >= 9) ) ? 0 : 0;
//         assign VGA_Blue_waveform9 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >=9)  ) ? 4'hA : 0;

//           assign VGA_Red_waveform10 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 10)  ) ? 4'hA : 0;
//         assign VGA_Green_waveform10 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 )  &&  (selector >= 10) ) ? 0 : 0;
//         assign VGA_Blue_waveform10 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >=10)  ) ? 4'hA : 0;
          
//           assign VGA_Red_waveform11 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                   (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 11)  ) ? 4'hA : 0;
//        assign VGA_Green_waveform11 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 )  &&  (selector >= 11) ) ? 0 : 0;
//        assign VGA_Blue_waveform11 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                     (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >=11)  ) ? 4'h9 : 0;

//           assign VGA_Red_waveform12 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 12)  ) ? 4'hA : 0;
//         assign VGA_Green_waveform12 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 )  &&  (selector >= 12) ) ? 0 : 0;
//         assign VGA_Blue_waveform12 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >=12)  ) ? 4'h8 : 0;

//           assign VGA_Red_waveform13 =  ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 * 800 ) &&
//                                    (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >= 13)  ) ? 4'hA : 0;
//         assign VGA_Green_waveform13 = ((((VGA_HORZ_COORD * 4- 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <= 2200 *900 )  &&  (selector >= 13) ) ? 0 : 0;
//         assign VGA_Blue_waveform13 = ( (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) >=  2200 *800 ) &&
//                                      (((VGA_HORZ_COORD * 4 - 2560))*((VGA_HORZ_COORD * 4 - 2560))  + ((VGA_VERT_COORD * 3 - 1536)) * ((VGA_VERT_COORD * 3 - 1536)) <=  2200 * 900 ) &&  (selector >=13)  ) ? 4'h7 : 0;


//            assign VGA_Red_waveform3= ((VGA_HORZ_COORD < 1280)&&(VGA_VERT_COORD < 1024)&& ((((VGA_HORZ_COORD-wave_sample-115) * (VGA_HORZ_COORD-wave_sample-115)) + ((wave_sample-VGA_VERT_COORD) * (wave_sample-VGA_VERT_COORD)))< ((Sample_Memory[(VGA_HORZ_COORD)]-300)*(Sample_Memory[(VGA_HORZ_COORD)]-300))))? 4'h0 : 4'h0;              
//            assign VGA_Green_waveform3 = ((VGA_HORZ_COORD < 1280)&&(VGA_VERT_COORD < 1024)&& ((((VGA_HORZ_COORD-wave_sample-115)* (VGA_HORZ_COORD-wave_sample-115)) + ((wave_sample-VGA_VERT_COORD) * (wave_sample-VGA_VERT_COORD)))< ((Sample_Memory[(VGA_HORZ_COORD)]-300)*(Sample_Memory[(VGA_HORZ_COORD)]-300))))? 4'hC : 4'h0;              
//            assign VGA_Blue_waveform3 = ((VGA_HORZ_COORD < 1280)&&(VGA_VERT_COORD < 1024)&& ((((VGA_HORZ_COORD-wave_sample-115) * (VGA_HORZ_COORD-wave_sample-115)) + ((wave_sample-VGA_VERT_COORD) * (wave_sample-VGA_VERT_COORD)))< ((Sample_Memory[(VGA_HORZ_COORD)]-300)*(Sample_Memory[(VGA_HORZ_COORD)]-300))))? 4'h0 : 4'h0;  
 
        
        assign VGA_Red_waveform    = VGA_Red_waveform0 | VGA_Red_waveform1 | VGA_Red_waveform2 | VGA_Red_waveform3  | VGA_Red_waveform4   | VGA_Red_waveform5                       | VGA_Red_waveform6  |VGA_Red_waveform7  | VGA_Red_waveform8  | VGA_Red_waveform9  | VGA_Red_waveform10  | VGA_Red_waveform11  | VGA_Red_waveform12  | VGA_Red_waveform13| VGA_Red_waveform14| VGA_Red_waveform15| VGA_Red_waveform16| VGA_Red_waveform17| VGA_Red_waveform18| VGA_Red_waveform19; // | VGA_Red_waveform4   ; 
        assign VGA_Green_waveform = VGA_Green_waveform0 | VGA_Green_waveform1  | VGA_Green_waveform2 | VGA_Green_waveform3 | VGA_Green_waveform4 | VGA_Green_waveform5 | VGA_Green_waveform6 | VGA_Green_waveform7 | VGA_Green_waveform8 | VGA_Green_waveform9 | VGA_Green_waveform10 | VGA_Green_waveform11 | VGA_Green_waveform12 | VGA_Green_waveform13  | VGA_Green_waveform14 | VGA_Green_waveform15 | VGA_Green_waveform16 | VGA_Green_waveform17 | VGA_Green_waveform18 | VGA_Green_waveform19;//  | VGA_Red_waveform4   ; 
        assign VGA_Blue_waveform    = VGA_Blue_waveform0 | VGA_Blue_waveform1  | VGA_Blue_waveform2 | VGA_Blue_waveform3 |VGA_Blue_waveform4  | VGA_Blue_waveform5                 | VGA_Blue_waveform6  | VGA_Blue_waveform7  | VGA_Blue_waveform8  | VGA_Blue_waveform9  | VGA_Blue_waveform10  | VGA_Blue_waveform11  | VGA_Blue_waveform12  | VGA_Blue_waveform13| VGA_Blue_waveform14| VGA_Blue_waveform15| VGA_Blue_waveform16| VGA_Blue_waveform17| VGA_Blue_waveform18| VGA_Blue_waveform19 ; //| VGA_Red_waveform4   ; 
        ///////////

endmodule
