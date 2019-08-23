`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module draw_pic(
    input clk,
          clk_sample,
    input [11:0] VGA_HORZ_COORD,//
    input [11:0] VGA_VERT_COORD,//
    output reg [3:0] VGA_Red_waveform ,
           reg [3:0] VGA_Green_waveform,
           reg [3:0] VGA_Blue_waveform
    );
    wire CLK_VGA;
    CLK_108M VGA_CLK_108M( 
              clk,   // 100 MHz
              CLK_VGA     // 108 MHz
          ) ; 
    reg  [31:0] addra = 0;
    wire  [23:0] douta;
    always @ (posedge clk_sample) 
    begin
        addra <= addra +1;
    end
    localparam SCREEN_WIDTH = 640;
    localparam SCREEN_HEIGHT = 360;
    localparam VRAM_DEPTH = SCREEN_WIDTH * SCREEN_HEIGHT; 
    localparam VRAM_A_WIDTH = 18;  // 2^18 > 640 x 360
    localparam VRAM_D_WIDTH = 6;   // colour bits per pixel
    reg [VRAM_A_WIDTH-1:0] address;
    wire [VRAM_D_WIDTH-1:0] dataout;
    sram #(
        .ADDR_WIDTH(VRAM_A_WIDTH), 
        .DATA_WIDTH(VRAM_D_WIDTH), 
        .DEPTH(VRAM_DEPTH), 
        .MEMFILE("nus.mem"))  // bitmap to load
        vram (
        .i_addr(address), 
        .i_clk(clk), 
        .i_write(0),  // we're always reading
        .i_data(0), 
        .o_data(dataout)
    );

    reg [11:0] palette [0:63];  // 64 x 12-bit colour palette entries
    reg [11:0] colour;
    initial begin
        $display("Loading palette.");
        $readmemh("nus_palette.mem", palette);  // bitmap palette to load
    end
    always @ (posedge clk)
        begin
            address <= VGA_VERT_COORD * SCREEN_WIDTH + VGA_HORZ_COORD;
    
            if (1)
                colour <= palette[dataout];
            else    
                colour <= 0;
    
            VGA_Red_waveform <= colour[11:8];
            VGA_Green_waveform <= colour[7:4];
            VGA_Blue_waveform <= colour[3:0];
    end
endmodule
