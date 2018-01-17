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
	 input [7:0] data,
	 input [0:9] X_PIX,
	 input [0:9] Y_PIX,
    input Video_On,
    input clk,
	 output reg [8:0] address,
    output reg [1:0] R,
    output reg [1:0] G,
    output reg [1:0] B
    );
	 
	 parameter black = 6'b000000 , red = 6'b110000 , green = 6'b001100 , blue = 6'b000011;
	 
	 //assign {R , G , B} = (Video_On)?((((X_PIX - 320)*(X_PIX - 320))+((Y_PIX - 240)*(Y_PIX - 240)) > 10000)?(6'b010101):(6'b110000)):(6'b000000);
	 
	 always@(*)begin
		if(Video_On)begin
			if(X_PIX < 512)begin
				if((480 - data) - Y_PIX <  2)begin
					{R , G , B} = green;
				end
				else begin 
					{R , G , B} = blue;
				end
			end
			else begin
				{R , G , B} = red;
			end
		end
		else begin
			{R , G , B} = black;
		end
	 end
	 
	 //assign {R , G , B} = (Video_On)?((X_PIX < 513)?(((480 - data) < Y_PIX)?(6'b001100):(6'b000011)):(6'b110000)):(6'b000000);
	 
	 always@(*)begin
		if(Video_On)begin
			if(X_PIX < 512)begin
				address = X_PIX;
			end
			else begin
				address = 0;
			end
		end
		else begin
			address = 0;
		end
	 end
	 
	 //assign address = (Video_On)?((X_PIX < 512)?(X_PIX):(0)):(0);
	 
endmodule
