`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// - VGA_HORZ_COORD changes at a rate of 108 MHz (CLK_VGA) to traverse each pixel in a row, while VGA_VERT_COORD changes at a rate of ~63.98 KHz to 
//   scan each row one by one and back to the top. These tech details are handled by vga_ctrl.vhd. One only needs to make use of these coordinates 
//   to output whatever they want at desired pixel locations. 
// 
// - VGA_ACTIVE is a binary indicator specifying when VGA_HORZ_COORD, VGA_VERT_COORD are valid (i.e., within the 1024 x 1280 pixel screen). For technical 
//   reasons the said coordinates do go outside this screen area for a short while and no VGA signal should be output during this time (it will and does
//   mess up the display). 
//
// - Hence, VGA_ACTIVE, VGA_HORZ_COORD and VGA_VERT_COORD may be used in conjunction with each other to generate VGA_RED, VGA_GREEN, VGA_BLUE. The Sync
//   signals should be output to the VGA port as well, and are responsible to generate the raster scan on the screen       
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_DISPLAY(
    input CLK,
    input sw4,sw8,
    input screen_protector,
    input btnU,btnD,btnC,btnL,btnR,

    input [3:0] VGA_RED_WAVEFORM, 
    input [3:0] VGA_GREEN_WAVEFORM, 
    input [3:0] VGA_BLUE_WAVEFORM,
    
    input [3:0] VGA_RED_WAVEFORM_2, 
    input [3:0] VGA_GREEN_WAVEFORM_2, 
    input [3:0] VGA_BLUE_WAVEFORM_2,
    
    input [3:0] VGA_RED_WAVEFORM_3, 
        input [3:0] VGA_GREEN_WAVEFORM_3, 
        input [3:0] VGA_BLUE_WAVEFORM_3,
    
    input [3:0] VGA_RED_WAVEFORM_4, 
    input [3:0] VGA_GREEN_WAVEFORM_4, 
    input [3:0] VGA_BLUE_WAVEFORM_4,    
    
    input [3:0] VGA_RED_WAVEFORM_A, 
    input [3:0] VGA_GREEN_WAVEFORM_A, 
    input [3:0] VGA_BLUE_WAVEFORM_A,
    
    input [3:0] VGA_RED_WAVEFORM_B, 
    input [3:0] VGA_GREEN_WAVEFORM_B, 
    input [3:0] VGA_BLUE_WAVEFORM_B,    
    
    input [3:0] VGA_RED_WAVEFORM_C, 
    input [3:0] VGA_GREEN_WAVEFORM_C, 
    input [3:0] VGA_BLUE_WAVEFORM_C,
    
    input [3:0] VGA_RED_WAVEFORM_D, 
    input [3:0] VGA_GREEN_WAVEFORM_D, 
    input [3:0] VGA_BLUE_WAVEFORM_D,
    
    input [3:0] VGA_RED_WAVEFORM_Freeze, 
        input [3:0] VGA_GREEN_WAVEFORM_Freeze, 
        input [3:0] VGA_BLUE_WAVEFORM_Freeze,
    
    input [3:0] VGA_RED_GRID,
    input [3:0] VGA_GREEN_GRID,
    input [3:0] VGA_BLUE_GRID,
    
    input [3:0] VGA_RED_GRID_a,
        input [3:0] VGA_GREEN_GRID_a,
        input [3:0] VGA_BLUE_GRID_a,
    
    input [3:0] VGA_RED_GRID1,
    input [3:0] VGA_GREEN_GRID1,
    input [3:0] VGA_BLUE_GRID1,    
    
    input [3:0] VGA_RED_GRID_SELECT,
    input [3:0] VGA_GREEN_GRID_SELECT,
    input [3:0] VGA_BLUE_GRID_SELECT,
    
    input [3:0] R_pic,
    input [3:0] G_pic,
    input [3:0] B_pic,

    
    output [11:0] VGA_HORZ_COORD,//
    output [11:0] VGA_VERT_COORD, //

    output reg[3:0] VGA_RED,    // RGB outputs to VGA connector (4 bits per channel gives 4096 possible colors)
    output reg[3:0] VGA_GREEN,
    output reg[3:0] VGA_BLUE,
    output reg VGA_VS,          // horizontal & vertical sync outputs to VGA connector
    output reg VGA_HS

    );
    
    reg [23:0]COUNT = 0;reg my_clk = 0;reg [3:0]counter = 1;reg [3:0]click=0;
    wire up_output,down_output,center_output,left_output,right_output;
    
    always @ (posedge CLK) begin
        COUNT<=COUNT +1;
        my_clk <= (COUNT == 0)? ~ my_clk : my_clk ;
    end
    
    fast_sp_module up(btnU,my_clk,up_output);
    fast_sp_module down(btnD,my_clk,down_output);
    fast_sp_module left(btnL,my_clk,left_output);
    fast_sp_module right(btnR,my_clk,right_output);
    fast_sp_module center(btnC,my_clk,center_output);
    
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
             if(counter==2)counter=1;
             else if (counter==4) counter<=3;
             else if (counter==3) counter<=2;
        end    
        if(right_output)begin
             if(counter==1)counter=2;
             else if (counter==3) counter<=4;
             else if (counter==2) counter<=3;
        end         
        if(center_output)begin
            if (click==1)click<=0;
            else click<=1;
        end
    end
    // COMBINE ALL OUTPUTS ON EACH CHANNEL
    wire[3:0] VGA_RED_CHAN;
    wire[3:0] VGA_GREEN_CHAN ;
    wire[3:0] VGA_BLUE_CHAN;
    assign VGA_RED_CHAN = (screen_protector==1)?(R_pic):((click==0)?(VGA_RED_GRID | VGA_RED_WAVEFORM |VGA_RED_WAVEFORM_2|VGA_RED_WAVEFORM_3|VGA_RED_WAVEFORM_4| VGA_RED_GRID_SELECT):((counter==1)?(VGA_RED_GRID1| VGA_RED_WAVEFORM_A|VGA_RED_WAVEFORM_Freeze|VGA_RED_GRID_a):(counter==3)?(VGA_RED_GRID1| VGA_RED_WAVEFORM_C|VGA_RED_GRID_a ):(counter==2)?(VGA_RED_GRID1| VGA_RED_WAVEFORM_D |VGA_RED_GRID_a):(counter==4)?(VGA_RED_GRID1| VGA_RED_WAVEFORM_B |VGA_RED_GRID_a):0));
    assign VGA_GREEN_CHAN = (screen_protector==1)?(G_pic):((click==0)?(VGA_GREEN_GRID | VGA_GREEN_WAVEFORM|VGA_GREEN_WAVEFORM_2|VGA_GREEN_WAVEFORM_3  |VGA_RED_WAVEFORM_4|VGA_GREEN_GRID_SELECT):((counter==1)?(VGA_GREEN_GRID1| VGA_GREEN_WAVEFORM_A|VGA_GREEN_WAVEFORM_Freeze|VGA_GREEN_GRID_a):(counter==3)?(VGA_GREEN_GRID1| VGA_GREEN_WAVEFORM_C |VGA_GREEN_GRID_a):(counter==2)?(VGA_GREEN_GRID1| VGA_GREEN_WAVEFORM_D |VGA_GREEN_GRID_a):(counter==4)?(VGA_GREEN_GRID1| VGA_GREEN_WAVEFORM_B|VGA_GREEN_GRID_a ):0)); 
    assign VGA_BLUE_CHAN = (screen_protector==1)?(B_pic):((click==0)?( VGA_BLUE_GRID | VGA_BLUE_WAVEFORM|VGA_BLUE_WAVEFORM_2|VGA_BLUE_WAVEFORM_3|VGA_RED_WAVEFORM_4|VGA_BLUE_GRID_SELECT):((counter==1)?(VGA_BLUE_GRID1| VGA_BLUE_WAVEFORM_A|VGA_BLUE_WAVEFORM_Freeze|VGA_BLUE_GRID_a):(counter==3)?(VGA_BLUE_GRID1| VGA_BLUE_WAVEFORM_C|VGA_BLUE_GRID_a ):(counter==2)?(VGA_BLUE_GRID1| VGA_BLUE_WAVEFORM_D |VGA_BLUE_GRID_a):(counter==4)?(VGA_BLUE_GRID1| VGA_BLUE_WAVEFORM_B |VGA_BLUE_GRID_a):0));   
    
    
    // VGA Clock Generator (108MHz)
    wire CLK_VGA;
    CLK_108M VGA_CLK_108M( 
            CLK,   // 100 MHz
            CLK_VGA     // 108 MHz
        ) ; 
        
    // VGA CONTROLLER   
    wire VGA_ACTIVE;
    wire VGA_HORZ_SYNC;
    wire VGA_VERT_SYNC; 
    
    VGA_CONTROL VGA_CONTROL(
            CLK_VGA,
            VGA_HORZ_SYNC,
            VGA_VERT_SYNC,
            VGA_ACTIVE,  
            VGA_HORZ_COORD,  
            VGA_VERT_COORD  
        ) ; 
    

    
    // CLOCK THEM OUT
    always@(posedge CLK_VGA) begin      
        
            VGA_RED <= {VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE} & VGA_RED_CHAN ;  
            VGA_GREEN <= {VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE} & VGA_GREEN_CHAN ; 
            VGA_BLUE <= {VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE, VGA_ACTIVE} & VGA_BLUE_CHAN ; 
                // VGA_ACTIVE turns off output to screen if scan lines are outside the active screen area
            
            VGA_HS <= VGA_HORZ_SYNC ;
            VGA_VS <= VGA_VERT_SYNC ;
            
    end
    

endmodule
