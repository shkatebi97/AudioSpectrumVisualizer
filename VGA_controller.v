`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:41 12/24/2017 
// Design Name: 
// Module Name:    VGA_controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VGA_controller(
    input External_Data_Control,
	 input [7:0] Data,
    input vclk,
	 output [8:0] Address,
    output [1:0] R,
    output [1:0] G,
    output [1:0] B,
    output HSync,
    output VSync
    );
	 
	 wire [9:0]X_PIX;
	 wire [9:0]Y_PIX;
	 
	 VGA_SYNC VGA_Sync (
		 .sclk(vclk), 
		 .enable(enable), 
		 .X_PIX(X_PIX), 
		 .Y_PIX(Y_PIX), 
		 .Video_On(Video_On), 
		 .HSync(HSync), 
		 .VSync(VSync)
		 );
	 Pixel_Generator Pix_Gen (
		 .EDOC(External_Data_Control),
		 .data(Data),
		 .X_PIX(X_PIX),
		 .Y_PIX(Y_PIX),
		 .Video_On(Video_On), 
		 .clk(vclk), 
		 .address(Address),
		 .R(R), 
		 .G(G), 
		 .B(B)
		 );
	 
	 assign enable = 1;
endmodule
