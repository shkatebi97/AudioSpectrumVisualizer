`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:32 12/24/2017 
// Design Name: 
// Module Name:    VGA_SYNC 
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
module VGA_SYNC(
	 input  sclk,				//Sync Clock
	 input  enable,			//VGA Sync Enable
    output [9:0] X_PIX,				//Showing Pixel's X
    output [9:0] Y_PIX,				//Showing Pixel's Y
    output Video_On,			//Show Video Enable
    output reg HSync,				//Sync Horizentally
    output reg VSync				//Sync Vertically
    );
	 reg [9:0] HCounter;
	 reg [9:0] VCounter;
	 reg H_Video_On;
	 reg V_Video_On;
	 
	 //Sync HSync
	 always@(posedge sclk)begin
		if((HCounter >= 655 && HCounter < 751) || (!enable))
			HSync = 0;
		else
			HSync = 1;
	 end
	 
	 //Sync VSync
	 always@(posedge sclk)begin
		if((VCounter >= 489 && VCounter < 491) || (!enable))
			VSync = 0;
		else
			VSync = 1;
	 end
	 
	 //Sync H_Video_On
	 always@(posedge sclk)begin
		if(enable)begin
			if(HCounter < 639)
				H_Video_On = 1;
			else
				H_Video_On = 0;
		end
		else
			H_Video_On = 0;
	 end
	 
	 //Sync V_Video_On
	 always@(posedge sclk)begin
		if(enable)begin
			if(VCounter < 639)
				V_Video_On = 1;
			else
				V_Video_On = 0;
		end
		else
			V_Video_On = 0;
	 end
	 
	 //Produce Video_On
	 assign Video_On = H_Video_On & V_Video_On;
	 
	 //Sync X_PIX
	 assign X_PIX = HCounter;
	 
	 //Sync T_PIX
	 assign Y_PIX = VCounter;
	 
	 //this Always manage Counters
	 always@(posedge sclk)begin 
		if(enable)begin
			HCounter = HCounter + 1;
			if(HCounter == 800)begin
				HCounter = 0;
				VCounter = VCounter + 1;
			end
			if(VCounter == 526)
				VCounter = 0;
		end
		else begin
			HCounter = 0;
			VCounter = 0;
		end
	 end
	 
	 //initial registers
	 initial begin
		HCounter = 0;
		VCounter = 0;
		HSync = 1;
		VSync = 1;
		H_Video_On = 1;
		V_Video_On = 1;
	 end
endmodule
