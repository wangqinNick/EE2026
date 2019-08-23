`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 06:46:56 PM
// Design Name: 
// Module Name: Draw_Waveform_3
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


module Draw_Waveform_3(
input clk_sample,
    input clk_8Hz,
    input [11:0] max_in,
    input [11:2] wave_sample,////5
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output [3:0] VGA_Red_waveform,
    output [3:0] VGA_Green_waveform,
    output [3:0] VGA_Blue_waveform
    );
     reg [11:2] Sample_Memory[1279:0];
           reg [10:0] i;
   
   //            //Each wave_sample is displayed on the screen from left to right. 
           always @ (posedge clk_sample) begin
               i = (i==1279) ? 0 : i + 1;
               Sample_Memory[i] <= wave_sample;              
           end
   
           
           reg [11:0] x = 0;
           reg [31:0] fx = 0;
         
   
   
           always @ (VGA_HORZ_COORD)
           begin
               x <= (VGA_HORZ_COORD % 320);
               case (x) 
               0: fx <= 0 ;
               1: fx <= 0 ;
               2: fx <= 0 ;
               3: fx <= 1 ;
               4: fx <= 1 ;
               5: fx <= 2 ;
               6: fx <= 2 ;
               7: fx <= 3 ;
               8: fx <= 3 ;
               9: fx <= 4 ;
               10: fx <= 4 ;
               11: fx <= 5 ;
               12: fx <= 5 ;
               13: fx <= 6 ;
               14: fx <= 6 ;
               15: fx <= 7 ;
               16: fx <= 7 ;
               17: fx <= 8 ;
               18: fx <= 8 ;
               19: fx <= 9 ;
               20: fx <= 9 ;
               21: fx <= 10 ;
               22: fx <= 10 ;
               23: fx <= 10 ;
               24: fx <= 11 ;
               25: fx <= 11 ;
               26: fx <= 12 ;
               27: fx <= 12 ;
               28: fx <= 13 ;
               29: fx <= 13 ;
               30: fx <= 13 ;
               31: fx <= 14 ;
               32: fx <= 14 ;
               33: fx <= 15 ;
               34: fx <= 15 ;
               35: fx <= 15 ;
               36: fx <= 16 ;
               37: fx <= 16 ;
               38: fx <= 16 ;
               39: fx <= 17 ;
               40: fx <= 17 ;
               41: fx <= 18 ;
               42: fx <= 18 ;
               43: fx <= 18 ;
               44: fx <= 19 ;
               45: fx <= 19 ;
               46: fx <= 19 ;
               47: fx <= 19 ;
               48: fx <= 20 ;
               49: fx <= 20 ;
               50: fx <= 20 ;
               51: fx <= 21 ;
               52: fx <= 21 ;
               53: fx <= 21 ;
               54: fx <= 21 ;
               55: fx <= 22 ;
               56: fx <= 22 ;
               57: fx <= 22 ;
               58: fx <= 22 ;
               59: fx <= 22 ;
               60: fx <= 23 ;
               61: fx <= 23 ;
               62: fx <= 23 ;
               63: fx <= 23 ;
               64: fx <= 23 ;
               65: fx <= 23 ;
               66: fx <= 24 ;
               67: fx <= 24 ;
               68: fx <= 24 ;
               69: fx <= 24 ;
               70: fx <= 24 ;
               71: fx <= 24 ;
               72: fx <= 24 ;
               73: fx <= 24 ;
               74: fx <= 24 ;
               75: fx <= 24 ;
               76: fx <= 24 ;
               77: fx <= 24 ;
               78: fx <= 24 ;
               79: fx <= 24 ;
               80: fx <= 25 ;
               81: fx <= 24 ;
               82: fx <= 24 ;
               83: fx <= 24 ;
               84: fx <= 24 ;
               85: fx <= 24 ;
               86: fx <= 24 ;
               87: fx <= 24 ;
               88: fx <= 24 ;
               89: fx <= 24 ;
               90: fx <= 24 ;
               91: fx <= 24 ;
               92: fx <= 24 ;
               93: fx <= 24 ;
               94: fx <= 24 ;
               95: fx <= 23 ;
               96: fx <= 23 ;
               97: fx <= 23 ;
               98: fx <= 23 ;
               99: fx <= 23 ;
               100: fx <= 23 ;
               101: fx <= 22 ;
               102: fx <= 22 ;
               103: fx <= 22 ;
               104: fx <= 22 ;
               105: fx <= 22 ;
               106: fx <= 21 ;
               107: fx <= 21 ;
               108: fx <= 21 ;
               109: fx <= 21 ;
               110: fx <= 20 ;
               111: fx <= 20 ;
               112: fx <= 20 ;
               113: fx <= 19 ;
               114: fx <= 19 ;
               115: fx <= 19 ;
               116: fx <= 19 ;
               117: fx <= 18 ;
               118: fx <= 18 ;
               119: fx <= 18 ;
               120: fx <= 17 ;
               121: fx <= 17 ;
               122: fx <= 16 ;
               123: fx <= 16 ;
               124: fx <= 16 ;
               125: fx <= 15 ;
               126: fx <= 15 ;
               127: fx <= 15 ;
               128: fx <= 14 ;
               129: fx <= 14 ;
               130: fx <= 13 ;
               131: fx <= 13 ;
               132: fx <= 13 ;
               133: fx <= 12 ;
               134: fx <= 12 ;
               135: fx <= 11 ;
               136: fx <= 11 ;
               137: fx <= 10 ;
               138: fx <= 10 ;
               139: fx <= 10 ;
               140: fx <= 9 ;
               141: fx <= 9 ;
               142: fx <= 8 ;
               143: fx <= 8 ;
               144: fx <= 7 ;
               145: fx <= 7 ;
               146: fx <= 6 ;
               147: fx <= 6 ;
               148: fx <= 5 ;
               149: fx <= 5 ;
               150: fx <= 4 ;
               151: fx <= 4 ;
               152: fx <= 3 ;
               153: fx <= 3 ;
               154: fx <= 2 ;
               155: fx <= 2 ;
               156: fx <= 1 ;
               157: fx <= 1 ;
               158: fx <= 0 ;
               159: fx <= 0 ;
               160: fx <= 0 ;
               161: fx <= 0 ;
               162: fx <= 0 ;
               163: fx <= -1 ;
               164: fx <= -1 ;
               165: fx <= -2 ;
               166: fx <= -2 ;
               167: fx <= -3 ;
               168: fx <= -3 ;
               169: fx <= -4 ;
               170: fx <= -4 ;
               171: fx <= -5 ;
               172: fx <= -5 ;
               173: fx <= -6 ;
               174: fx <= -6 ;
               175: fx <= -7 ;
               176: fx <= -7 ;
               177: fx <= -8 ;
               178: fx <= -8 ;
               179: fx <= -9 ;
               180: fx <= -9 ;
               181: fx <= -10 ;
               182: fx <= -10 ;
               183: fx <= -10 ;
               184: fx <= -11 ;
               185: fx <= -11 ;
               186: fx <= -12 ;
               187: fx <= -12 ;
               188: fx <= -13 ;
               189: fx <= -13 ;
               190: fx <= -13 ;
               191: fx <= -14 ;
               192: fx <= -14 ;
               193: fx <= -15 ;
               194: fx <= -15 ;
               195: fx <= -15 ;
               196: fx <= -16 ;
               197: fx <= -16 ;
               198: fx <= -16 ;
               199: fx <= -17 ;
               200: fx <= -17 ;
               201: fx <= -18 ;
               202: fx <= -18 ;
               203: fx <= -18 ;
               204: fx <= -19 ;
               205: fx <= -19 ;
               206: fx <= -19 ;
               207: fx <= -19 ;
               208: fx <= -20 ;
               209: fx <= -20 ;
               210: fx <= -20 ;
               211: fx <= -21 ;
               212: fx <= -21 ;
               213: fx <= -21 ;
               214: fx <= -21 ;
               215: fx <= -22 ;
               216: fx <= -22 ;
               217: fx <= -22 ;
               218: fx <= -22 ;
               219: fx <= -22 ;
               220: fx <= -23 ;
               221: fx <= -23 ;
               222: fx <= -23 ;
               223: fx <= -23 ;
               224: fx <= -23 ;
               225: fx <= -23 ;
               226: fx <= -24 ;
               227: fx <= -24 ;
               228: fx <= -24 ;
               229: fx <= -24 ;
               230: fx <= -24 ;
               231: fx <= -24 ;
               232: fx <= -24 ;
               233: fx <= -24 ;
               234: fx <= -24 ;
               235: fx <= -24 ;
               236: fx <= -24 ;
               237: fx <= -24 ;
               238: fx <= -24 ;
               239: fx <= -24 ;
               240: fx <= -25 ;
               241: fx <= -24 ;
               242: fx <= -24 ;
               243: fx <= -24 ;
               244: fx <= -24 ;
               245: fx <= -24 ;
               246: fx <= -24 ;
               247: fx <= -24 ;
               248: fx <= -24 ;
               249: fx <= -24 ;
               250: fx <= -24 ;
               251: fx <= -24 ;
               252: fx <= -24 ;
               253: fx <= -24 ;
               254: fx <= -24 ;
               255: fx <= -23 ;
               256: fx <= -23 ;
               257: fx <= -23 ;
               258: fx <= -23 ;
               259: fx <= -23 ;
               260: fx <= -23 ;
               261: fx <= -22 ;
               262: fx <= -22 ;
               263: fx <= -22 ;
               264: fx <= -22 ;
               265: fx <= -22 ;
               266: fx <= -21 ;
               267: fx <= -21 ;
               268: fx <= -21 ;
               269: fx <= -21 ;
               270: fx <= -20 ;
               271: fx <= -20 ;
               272: fx <= -20 ;
               273: fx <= -19 ;
               274: fx <= -19 ;
               275: fx <= -19 ;
               276: fx <= -19 ;
               277: fx <= -18 ;
               278: fx <= -18 ;
               279: fx <= -18 ;
               280: fx <= -17 ;
               281: fx <= -17 ;
               282: fx <= -16 ;
               283: fx <= -16 ;
               284: fx <= -16 ;
               285: fx <= -15 ;
               286: fx <= -15 ;
               287: fx <= -15 ;
               288: fx <= -14 ;
               289: fx <= -14 ;
               290: fx <= -13 ;
               291: fx <= -13 ;
               292: fx <= -13 ;
               293: fx <= -12 ;
               294: fx <= -12 ;
               295: fx <= -11 ;
               296: fx <= -11 ;
               297: fx <= -10 ;
               298: fx <= -10 ;
               299: fx <= -10 ;
               300: fx <= -9 ;
               301: fx <= -9 ;
               302: fx <= -8 ;
               303: fx <= -8 ;
               304: fx <= -7 ;
               305: fx <= -7 ;
               306: fx <= -6 ;
               307: fx <= -6 ;
               308: fx <= -5 ;
               309: fx <= -5 ;
               310: fx <= -4 ;
               311: fx <= -4 ;
               312: fx <= -3 ;
               313: fx <= -3 ;
               314: fx <= -2 ;
               315: fx <= -2 ;
               316: fx <= -1 ;
               317: fx <= -1 ;
               318: fx <= 0 ;
               319: fx <= 0 ;
   
                   
                   
               endcase
               
           end
       reg [10:0] times;
       always @(max_in) begin
       //        if(sw == 0) //max 
       //        begin
               
       //        end
               //max_in <= max;     
   
               
               if(max_in <= 2200) begin
                   times <= 1;
               end
               else if(max_in >= 2200 && max_in <= 2300) begin
                   times <= 2;            
               end
               else if(max_in >= 2300 && max_in <= 2400) begin
                   times <= 3;            
               end
               else if(max_in >= 2400 && max_in <= 2500) begin
                   times <= 4;            
               end
               else if(max_in >= 2500 && max_in <= 2600) begin
                   times <= 5;            
               end
               else if(max_in >= 2600 && max_in <= 2700) begin
                   times <= 6;            
               end  
               else if(max_in >= 2700 && max_in <= 2800) begin
                   times <= 7;            
               end  
               else if(max_in >= 2800 && max_in <= 2900) begin
                   times <= 8;            
               end
               else if(max_in >= 2900 && max_in <= 3000) begin
                   times <= 9;       
               end
               else if(max_in >= 3000 && max_in <= 3100 ) begin
                   times <= 10 ;          
               end
               else if(max_in >= 3100 && max_in <= 3200 ) begin
                   times <= 11;
               end
               else if(max_in >= 3200 && max_in <= 3300 ) begin
                   times <= 12;
               end
               else if(max_in >= 3300 && max_in <= 3400 ) begin
                   times <= 13;
               end     
               else if(max_in >= 3400 && max_in <= 3500 ) begin
                   times <= 14;
               end    
               else if(max_in >= 3500 && max_in <= 3600 ) begin
                   times <= 15;
               end     
               else if(max_in >= 3600 && max_in <= 3700 ) begin
                   times <= 16;
               end
               else if(max_in >= 3700 && max_in <= 3800 ) begin
                   times <= 17;
               end    
               else if(max_in >= 3800 && max_in <= 3900 ) begin
                   times <= 18;
               end        
               else if(max_in >= 3900 && max_in <= 4000 ) begin
                   times <= 19;
               end     
               else if(max_in >= 4000 ) begin
                   times <= 20;
               end                      
           end
           assign VGA_Red_waveform = (VGA_HORZ_COORD<=635)&&(VGA_VERT_COORD>=517)&&(VGA_VERT_COORD -256== (fx ) * times + 512   ) ? 4'h0 : 4'h0; 
           assign VGA_Green_waveform = (VGA_HORZ_COORD<=635)&&(VGA_VERT_COORD>=517)&&(VGA_VERT_COORD -256== (fx )* times  + 512 ) ? 4'hC : 4'h0; 
           assign VGA_Blue_waveform = (VGA_HORZ_COORD<=635)&&(VGA_VERT_COORD>=517)&&(VGA_VERT_COORD -256== (fx ) * times +512 ) ? 4'h0 : 4'h0; 
endmodule
