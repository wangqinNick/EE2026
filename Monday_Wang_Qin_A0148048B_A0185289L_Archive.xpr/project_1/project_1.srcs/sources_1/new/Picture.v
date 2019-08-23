`timescale 1ns / 1ps



module Picture (
	input [9:0] X,
	input [8:0] Y,
	input CLK,
	input [9:0] ADDRH,
	input [8:0] ADDRV,
	output reg [3:0] COLOUR_OUT,
	input [7:0] BACKGROUND
	);
	
	//parameter Mickey = 13'd6960;	//The same values as for a moving picture
	parameter Gimpy = 13'd6400;
	parameter GimpyXY = 7'd80;
	//parameter MickeyX = 7'd80;
	//parameter MickeyY = 7'd87;
	
	
	reg [7:0] COLOUR_DATA [0:Gimpy-1];	//data of colours
	wire [12:0] STATE;	
	
	initial
	$readmemh ("gimpy.list", COLOUR_DATA);
	
	assign STATE = (ADDRH-X)*GimpyXY+ADDRV-Y;	//apply formula
	
	always @(posedge CLK) begin
		if (ADDRH>=X && ADDRH<X+GimpyXY
			&& ADDRV>=Y && ADDRV<Y+GimpyXY)
				COLOUR_OUT <= COLOUR_DATA[{STATE}];
			else
				COLOUR_OUT <= BACKGROUND;
	end
	
endmodule

