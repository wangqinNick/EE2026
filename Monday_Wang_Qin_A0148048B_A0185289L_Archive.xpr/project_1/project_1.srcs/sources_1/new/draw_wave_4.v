`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 05:55:28 PM
// Design Name: 
// Module Name: Draw_Waveform_4
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


module Draw_Waveform_4(
input clk_sample,
input clk_640Hz,clk_128Hz,
input sw,
    input [11:2] wave_sample,////5
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output [3:0] VGA_Red_waveform,
    output [3:0] VGA_Green_waveform,
    output [3:0] VGA_Blue_waveform
    );
    reg [11:0] Sample_Memory[1279:0];
    reg [10:0] i;
    wire [3:0] VGA_Red_0;
    wire [3:0] VGA_Green_0;
    wire [3:0] VGA_Blue_0;
    reg [11:0] SM [1279:0];
    
    //Each wave_sample is displayed on the screen from left to right. 
    always @ (posedge clk_sample) begin
        i = (i==1279) ? 0 : i + 1;
        Sample_Memory[i] <= wave_sample;   
        SM[i] <= wave_sample;
        if(SM[i] - 512 <0) begin
            SM[i] <= 512 - SM[i];
            
        end          
    end    
    
    reg [31:0] counter = 645;
    reg [31:0] counter2 = 32'b0;
    wire [3:0] VGA_Red_1 ;
    wire [3:0] VGA_Green_1 ;
    wire [3:0] VGA_Blue_1 ;
    reg [11:0] store [1279:0] ;
    always @ ( posedge clk_640Hz)
            begin
                if(counter >= 1279) begin counter <= 645; end
                else begin
                    counter <= counter + 1;// 控制走了多远
                    store [counter] <= SM[counter];
                end
            end
   //assign VGA_Red_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter) &&(VGA_HORZ_COORD>=645) &&(VGA_VERT_COORD >= 256+store[VGA_HORZ_COORD] ))? 4'h0:(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  >= 256+SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));
  // assign VGA_Green_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter) && (VGA_HORZ_COORD>=645) &&(VGA_VERT_COORD >= 256+store[VGA_HORZ_COORD] ))? 4'hC:(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD >= 256+SM[(VGA_HORZ_COORD)])) ? 4'hC : 4'h0));
   //assign VGA_Blue_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter) && (VGA_HORZ_COORD>=645) &&(VGA_VERT_COORD >= 256+store[VGA_HORZ_COORD] ))? 4'h0:(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  >= 256+SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));
   
    assign VGA_Red_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD - 256 <= (512-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))) ? 4'hf : 0):
                        ((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD + 768  >= (1536-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&&((VGA_VERT_COORD -255)  <= ((store[VGA_HORZ_COORD])-512)))) ? 4'hf : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  == SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));
    
    assign VGA_Green_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD - 256 <= (512-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))) ? 4'ha : 0):
                        ((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD + 768  >= (1536-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&&((VGA_VERT_COORD -255)  <= ((store[VGA_HORZ_COORD])-512)))) ? 4'ha : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD == SM[(VGA_HORZ_COORD)])) ? 4'hC : 4'h0));
    
    assign VGA_Blue_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD - 256 <= (512-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))) ? 4'hf : 0):
                        ((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD + 768  >= (1536-(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&&((VGA_VERT_COORD -255)  <= ((store[VGA_HORZ_COORD])-512)))) ? 4'hf : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  == SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));

//   assign VGA_Red_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD -256<= (512-(store[VGA_HORZ_COORD]))))) ? 4'hf : 0):
//                      ((((VGA_HORZ_COORD < 1280) &&(VGA_VERT_COORD<=256)&&(VGA_VERT_COORD +768  >= (1536-store[VGA_HORZ_COORD])))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD -512 <= ((store[VGA_HORZ_COORD])-512)))) ? 4'hf : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  == SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));
//   assign VGA_Green_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) &&(VGA_VERT_COORD<=256)&& (VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD -256<= (512-(store[VGA_HORZ_COORD]))))) ? 4'ha : 0):
//                      ((((VGA_HORZ_COORD < 1280) &&(VGA_VERT_COORD<=256)&&(VGA_VERT_COORD +768  >= (1536-store[VGA_HORZ_COORD])))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD -512 <= ((store[VGA_HORZ_COORD])-512)))) ? 4'ha : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD == SM[(VGA_HORZ_COORD)])) ? 4'hC : 4'h0));
//   assign VGA_Blue_waveform = (counter==0)? 4'h0:(((VGA_HORZ_COORD<counter)&&(VGA_HORZ_COORD>=645))? ((store[VGA_HORZ_COORD]<=512)?((((VGA_HORZ_COORD < 1280) &&(VGA_VERT_COORD<=256)&& (VGA_VERT_COORD + 768 >= (512+(store[VGA_HORZ_COORD]))))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=512)&& (VGA_VERT_COORD<=256)&& (VGA_VERT_COORD -256<= (512-(store[VGA_HORZ_COORD]))))) ? 4'hf : 0):
//                      ((((VGA_HORZ_COORD < 1280) &&(VGA_VERT_COORD<=256)&&(VGA_VERT_COORD +768  >= (1536-store[VGA_HORZ_COORD])))||((VGA_HORZ_COORD < 1280) && (VGA_VERT_COORD<=256)&&(VGA_VERT_COORD -512 <= ((store[VGA_HORZ_COORD])-512)))) ? 4'hf : 0)):(((VGA_HORZ_COORD==counter) && (VGA_VERT_COORD  == SM[(VGA_HORZ_COORD)])) ? 4'h0 : 4'h0));

endmodule
