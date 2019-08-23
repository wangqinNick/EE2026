`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 08:27:19 PM
// Design Name: 
// Module Name: volume_indicator
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


module volume_indicator(
    input [11:0] MIC_IN,
           clk_20k, 
           clk_10Hz,
           clk_762Hz,
           sw,
    output reg [13:0] led = 0, reg [3:0]an = 4'b0000, reg [7:0] seg = 0, reg [11:0] max_in
    );
    reg [11:0] max = 0;

    //reg [11:0] average = 12'b0;
    //reg [11:0] average_in = 12'b0;
    //reg [31:0] sum = 32'b0;
    reg [9:0] counter = 0;
    reg [7:0] four = 8'b11000000; // not change 0
    reg [7:0] three = 8'b11000000; // not change 0
    reg [7:0] two = 8'b11000000; // 0
    reg [7:0] one = 8'b11000000; // 0
    always @(posedge clk_20k) begin
        if(max < MIC_IN) begin max <= MIC_IN;end
        //sum <= MIC_IN + sum; 
        if(counter ==0) begin
            max <= 0;
            //average <= sum / 2000;
            //sum <= 0;
        end
        counter <= counter + 1;
        
    
    end
    always @(posedge clk_10Hz) begin
//        if(sw == 0) //max 
//        begin
        
//        end
        //max_in <= max;     
        max_in <= max;
        
        if(max_in < 2200) begin
            led <= 14'b00000000000001;//0
            two <= 8'b11000000;//0
            one <= 8'b11111001;//1        
        end
        else if(max_in >= 2200 && max_in < 2350) begin
            led <= 14'b00000000000011;//0
            two <= 8'b11000000;//0
            one <= 8'b10100100;//2      
        end
        else if(max_in >= 2350 && max_in < 2500) begin
            led <= 14'b00000000000111;//0
            two <= 8'b11000000;//0
            one <= 8'b10110000;//3  
        end
        else if(max_in >= 2500 && max_in < 2650) begin
            led <= 14'b00000000001111;//0
            two <= 8'b11000000;//0
            one <= 8'b10011001;//4  
        end
        else if(max_in >= 2650 && max_in <= 2800) begin
            led <= 14'b00000000011111;//0
            two <= 8'b11000000;//0
            one <= 8'b10010010;//5  
        end
        else if(max_in >= 2800 && max_in <= 2950) begin
            led <= 14'b00000000111111;//0
            two <= 8'b11000000;//0
            one <= 8'b10000010;//6  
        end  
        else if(max_in >= 2950 && max_in <= 3100) begin
            led <= 14'b00000001111111;//0
            two <= 8'b11000000;//0
            one <= 8'b11111000;//7  
        end  
        else if(max_in >= 3100 && max_in <= 3250) begin
            led <= 14'b00000011111111;//0
            two <= 8'b11000000;//0
            one <= 8'b10000000;//8  
        end
        else if(max_in >= 3250 && max_in <= 3400) begin
            led <= 14'b00000111111111;//0
            two <= 8'b11000000;//0
            one <= 8'b10010000;//9  
        end
        else if(max_in >= 3400 && max_in <= 3550 ) begin
            led <= 14'b00001111111111;//0
            two <= 8'b11111001;//1
            one <= 8'b11000000;//0  
        end
        else if(max_in >= 3550 && max_in <= 3700 ) begin
            led <= 14'b00011111111111;//0
            two <= 8'b11111001;//1
            one <= 8'b11111001;//1  
        end
        else if(max_in >= 3700 && max_in <= 3850 ) begin
            led <= 14'b00111111111111;//0
            two <= 8'b11111001;//1
            one <= 8'b10100100;//2  
        end
        else if(max_in >= 3850 && max_in <= 4000 ) begin
            led <= 14'b01111111111111;//0
            two <= 8'b11111001;//1
            one <= 8'b10110000;//3  
        end      
        else if(max_in >= 4000 ) begin
            led <= 14'b11111111111111;//0
            two <= 8'b11111001;//1
            one <= 8'b10011001;//4  
        end                      
    end
    integer i = 0;
    always @(posedge clk_762Hz) begin
        if(led == 14'b00000000000001) begin 
            case(i) 
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000000000011) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000000000111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000000001111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000000011111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000000111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000001111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000011111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00000111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00001111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b00011111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end       
        if(led == 14'b00111111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b01111111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end
        if(led == 14'b11111111111111) begin
            case(i)
                0: begin an <= 4'b1110; seg <= one;end
                1: begin an <= 4'b1101; seg <= two;end
                2: begin an <= 4'b1011; seg <= three; end
                3: begin an <= 4'b0111; seg <= four; end
            endcase
        end 
        i <= i + 1;
        if(i == 3) i <= 0;
    end
endmodule