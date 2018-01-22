`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:51:40 01/21/2018
// Design Name:   main_module
// Module Name:   C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2_rebuild/MainTest.v
// Project Name:  Phase2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MainTest;

	// Inputs
	reg cclk;
	reg reset;

	// Outputs
	wire PC_out;
	wire [7:0] dataOut;
	wire VGA_VSync;
	wire VGA_HSync;
	wire [1:0] VGA_R;
	wire [1:0] VGA_G;
	wire [1:0] VGA_B;

	// Instantiate the Unit Under Test (UUT)
	main_module uut (
		.cclk(cclk), 
		.reset(reset), 
		.PC_out(PC_out), 
		.dataOut(dataOut), 
		.VGA_VSync(VGA_VSync), 
		.VGA_HSync(VGA_HSync), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B)
	);

	initial begin
		// Initialize Inputs
		cclk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      always #20 cclk = ~cclk;
endmodule

