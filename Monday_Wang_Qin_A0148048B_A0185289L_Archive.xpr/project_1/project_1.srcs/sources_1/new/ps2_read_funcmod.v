`timescale 1ns / 1ps

module ps2_read_funcmod(
    input CLOCK, RESET,
    input PS2_CLK,PS2_DAT,
    input iEn,
    output oTrig,
    output [23:0]oData
    );
    parameter FF_Read = 7'd32;
    reg F2,F1; 
    always @ ( posedge CLOCK or negedge RESET )
    if( !RESET )
        { F2,F1 } <= 2'b11;
    else 
        { F2, F1 } <= { F1, PS2_CLK };
    wire isH2L = ( F2 == 1'b1 && F1 == 1'b0 );
    reg [23:0]D1;
    reg [7:0]T;
    reg [6:0]i,Go;
    reg isDone;
    always @ ( posedge CLOCK or negedge RESET )
    begin
        if( !RESET )
        begin
            D1 <= 24'd0;
            T <= 8'd0;
            { i,Go } <= { 7'd0,7'd0 };
            isDone <= 1'b0;
        end
        else if( iEn ) 
        begin 
            case( i )
                0: // Read 1st byte
                    begin i <= FF_Read; Go <= i + 1'b1; end
                1: // Store 1st byte
                    begin D1[7:0] <= T; i <= i + 1'b1; end
                2: // Read 2nd byte
                    begin i <= FF_Read; Go <= i + 1'b1; end
                3: // Store 2nd byte
                    begin D1[15:8] <= T; i <= i + 1'b1; end
                4: // Read 3rd byte
                    begin i <= FF_Read; Go <= i + 1'b1; end
                5: // Store 3rd byte
                    begin D1[23:16] <= T; i <= i + 1'b1; end
                6:
                    begin isDone <= 1'b1; i <= i + 1'b1; end
                7:
                    begin isDone <= 1'b0; i <= 7'd0; end
                32: // Start bit
                    if( isH2L ) i <= i + 1'b1; 
                33,34,35,36,37,38,39,40:  // Data byte
                    if( isH2L ) begin T[i-33] <= PS2_DAT; i <= i + 1'b1;  end
                41: // Parity bit
                    if( isH2L ) i <= i + 1'b1;
                42: // Stop bit
                    if( isH2L ) i <= Go;
                endcase
        end
    end    
    assign oTrig = isDone;
    assign oData = D1;
endmodule
