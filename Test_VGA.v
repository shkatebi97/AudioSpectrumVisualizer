`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:04 12/24/2017
// Design Name:   VGA_controller
// Module Name:   C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2/Test_VGA.v
// Project Name:  Phase2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VGA_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_VGA;

	// Inputs
	reg [9:0] HSCounter;
	reg [9:0] VSCounter;
	reg vclk;

	// Outputs
	wire [1:0] R;
	wire [1:0] G;
	wire [1:0] B;
	wire HSync;
	wire VSync;

	// Instantiate the Unit Under Test (UUT)
	VGA_controller uut (
		.External_Data_Control(External_Data_Control), 
		.vclk(vclk), 
		.R(R), 
		.G(G), 
		.B(B), 
		.HSync(HSync), 
		.VSync(VSync)
	);

	initial begin
		// Initialize Inputs
		vclk = 0;
		HSCounter = 0;
		VSCounter = 0;
		
		// Wait 100 ns for global reset to finish
		
		// Add stimulus here

	end
	always#5 vclk = ~vclk;
	always@(posedge vclk) begin 
		HSCounter = HSCounter + 1;
		if(HSCounter == 800)begin
			HSCounter = 0;
			VSCounter = VSCounter + 1;
		end
		if(VSCounter == 526)
			VSCounter = 0;
	end
endmodule

