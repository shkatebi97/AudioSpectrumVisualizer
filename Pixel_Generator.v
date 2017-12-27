`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:34 12/24/2017 
// Design Name: 
// Module Name:    Pixel_Generator 
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
module Pixel_Generator(
    input EDOC,
	 input [9:0] X_SH,
	 input [9:0] Y_SH,
    input [9:0] X_PIX,
    input [9:0] Y_PIX,
    input Video_On,
    input clk,
    output [1:0] R,
    output [1:0] G,
    output [1:0] B
    );
	 //integer i = 0 , j = 0;
	 
	 //reg [479:0][639:0] Video[5:0]; //640x480 -> RGB
	 
	 //assign {R , G , B} = (Video_On)?((((X_PIX - 320 + X_SH)*(X_PIX - 320 + X_SH))+((Y_PIX - 240 + Y_SH)*(Y_PIX - 240 + Y_SH)) > 10000)?(6'b000011):(6'b001100)):(6'b000000);
	 assign {R , G , B} = (Video_On)?((((X_PIX - 320)*(X_PIX - 320))+((Y_PIX - 240)*(Y_PIX - 240)) > 10000)?(6'b010101):(6'b110000)):(6'b000000);
	 
endmodule
