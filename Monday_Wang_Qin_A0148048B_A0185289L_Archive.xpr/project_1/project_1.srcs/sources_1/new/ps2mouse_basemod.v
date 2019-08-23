`timescale 1ns / 1ps

module ps2mouse_basemod(
    input CLOCK,
    inout PS2_CLK, PS2_DAT,
    output oTrig,
    output [1:0] counter
    );
    wire EnU1;

    ps2_init_funcmod U1
               (.CLOCK( CLOCK ),
                .RESET( 0 ),
                .PS2_CLK( PS2_CLK ), // < top
                .PS2_DAT( PS2_DAT ), // < top
                .oEn( EnU1 ) // > U2
               );
    wire [23:0]DataU2;
    ps2_read_funcmod U2
        (   .CLOCK( CLOCK ),
            .RESET( 0 ),
            .PS2_CLK( PS2_CLK ), // < top
            .PS2_DAT( PS2_DAT ), // < top
            .iEn( EnU1 ),       // < U1
            .oTrig( oTrig ),    // > Top
            .oData( DataU2 )   // > Top
    );
    wire[7:0] X = DataU2[4] ? (~DataU2[15:8] + 1'b1) : DataU2[15:8];
    wire[7:0] Y = DataU2[5] ? (~DataU2[23:16] + 1'b1) : DataU2[23:16];
    assign counter = (DataU2) ? ( DataU2[5] ?  2 : 4     ) : ( DataU2[5] ? 1 : 3  );
    
endmodule