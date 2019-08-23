module mouse(
    input clock_100Mhz, // 100 Mhz clock source on Basys 3 FPGA
    input Mouse_Data, // Mouse PS2 data
    input Mouse_Clk, // Mouse PS2 Clock
    output reg  Right = 0,
    output reg  Left = 0
    );
    reg [5:0] Mouse_bits; // count number of bits receiving from the PS2 mouse 

    always @(posedge Mouse_Clk)
    begin
         if(Mouse_bits <=31) 
            Mouse_bits <= Mouse_bits + 1;
        else 
             Mouse_bits <= 0;
    end
 //when pressing Left/Right Mouse 
    always @(negedge Mouse_Clk)
    begin       
        if(Mouse_bits==1) begin
            if(Mouse_Data==1) // if The mouse is left clicked, 
               Right <= 1;
               
        end
        else if(Mouse_bits==2) begin
           if(Mouse_Data==1)// if The mouse is right clicked, 
                Left <= 1;
        end         
    end    

 endmodule