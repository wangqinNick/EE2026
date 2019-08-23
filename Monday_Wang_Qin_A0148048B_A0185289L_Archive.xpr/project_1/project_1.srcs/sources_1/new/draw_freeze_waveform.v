`timescale 1ns / 1ps

module draw_freeze_waveform(
    input clk_sample,clk,clk_20Hz,
    input [3:0] br,
    input [3:0] bg,
    input [3:0] bb,
    input sw4,
    input [11:2] wave_sample,////5
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output [3:0] VGA_Red_waveform,
    output [3:0] VGA_Green_waveform,
    output [3:0] VGA_Blue_waveform
    );
    reg [11:0] Sample_Memory[1279:0];   
    reg [11:0] temp_Sample_Memory[1279:0];
    reg [10:0] i;
    reg [11:0] SM [1279:0];
    always @ (posedge clk_sample) begin
        i = (i==1279) ? 0 : i + 1;
        //if (wave_sample-600>=0)begin
        Sample_Memory[i] <= wave_sample;  
        SM[i] <= wave_sample;
        if(SM[i] - 512 <0) begin
            SM[i] <= 512 - SM[i];    
        end  
        if(sw4 == 1) 
        begin
            
        end 
        else begin
            temp_Sample_Memory[i] <= Sample_Memory[i];
        end    
    end
    
    wire [3:0] VGA_Red_0;
    wire [3:0] VGA_Green_0;
    wire [3:0] VGA_Blue_0;
    
    wire [3:0] VGA_Red_1;
    wire [3:0] VGA_Green_1;
    wire [3:0] VGA_Blue_1;
    assign VGA_Red_0 =   (VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=300)&&(VGA_VERT_COORD+300 >= temp_Sample_Memory[VGA_HORZ_COORD]) ? 15 :0;
    assign VGA_Green_0 =  (VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=300)&&(VGA_VERT_COORD+300 >= temp_Sample_Memory[VGA_HORZ_COORD]) ? 11 :0;
    assign VGA_Blue_0 =   (VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=300)&&(VGA_VERT_COORD+300 >= temp_Sample_Memory[VGA_HORZ_COORD]) ? 15 :0;

    reg [31:0] counter = 32'b0;
    reg [11:0] store [1279:0] ;
    always @ ( posedge clk_20Hz)
        begin
            if(counter >= 900) begin counter <= 0; SM[0] <= 300 ;end
            else begin
                counter <= counter + 1;// 控制走了多远
                store [counter] <= SM[counter];
        end
    end
    
    assign VGA_Red_1 = (counter==0)? 0 :((VGA_HORZ_COORD<counter)?((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_VERT_COORD+300  >= store[(VGA_HORZ_COORD)-2])&&(VGA_VERT_COORD+300  <= store[(VGA_HORZ_COORD)]+2)?15 : 0) :(((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_HORZ_COORD==counter) && (VGA_VERT_COORD+300  == SM[(VGA_HORZ_COORD)])) ? 15 : 0));
    assign VGA_Green_1 = (counter==0)? 0 :((VGA_HORZ_COORD<counter)?((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_VERT_COORD+300  >= store[(VGA_HORZ_COORD)-2])&&(VGA_VERT_COORD+300  <= store[(VGA_HORZ_COORD)]+2)?11 : 0) :(((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_HORZ_COORD==counter) && (VGA_VERT_COORD +300 == SM[(VGA_HORZ_COORD)])) ? 11 : 0));
    assign VGA_Blue_1 =(counter==0)? 0 :((VGA_HORZ_COORD<counter)?((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_VERT_COORD+300  >= store[(VGA_HORZ_COORD)-2])&&(VGA_VERT_COORD+300  <= store[(VGA_HORZ_COORD)]+2)?15 : 0) :(((VGA_VERT_COORD<=300)&&(VGA_HORZ_COORD<=900)&&(VGA_HORZ_COORD==counter) && (VGA_VERT_COORD+300  == SM[(VGA_HORZ_COORD)])) ? 15: 0));
    
    assign VGA_Red_waveform = (sw4 == 0) ? VGA_Red_1 : VGA_Red_0;
    assign VGA_Green_waveform = (sw4 == 0) ? VGA_Green_1 : VGA_Green_0;
    assign VGA_Blue_waveform = (sw4 == 0) ? VGA_Blue_1 : VGA_Blue_0;
    
endmodule
