`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:28:25 12/24/2017
// Design Name:   main_module
// Module Name:   C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2/MainModule_Test.v
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

module MainModule_Test;

	// Inputs
	reg ADC_in;
	reg cclk;
	reg reset;
	reg [7:0]data;
	reg start;

	// Outputs
	wire [7:0]RxD_data;
	wire PC_out;
	wire ADC_out;
	wire VGA_VSync;
	wire VGA_HSync;
	wire [1:0] VGA_R;
	wire [1:0] VGA_G;
	wire [1:0] VGA_B;

	// Instantiate the Unit Under Test (UUT)
	main_module #(.clkFrquency(25000000)) uut(
		.ADC_in(TxD), 
		.cclk(cclk), 
		.reset(reset), 
		.PC_out(PC_out), 
		//.ADC_out(ADC_out), 
		.VGA_VSync(VGA_VSync), 
		.VGA_HSync(VGA_HSync),
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B)
	);
	async_receiver #(.ClkFrequency(25000000), .Baud(115200)) PC_R(
		 .clk(cclk), 
		 .RxD(PC_out), 
		 .RxD_data_ready(RxD_data_ready), 
		 .RxD_data(RxD_data), 
		 .RxD_idle(RxD_idle), 
		 .RxD_endofpacket(RxD_endofpacket), 
		 .OversamplingTick(OversamplingTick)
	);
	async_transmitter #(.ClkFrequency(25000000), .Baud(115200)) ADC_In (
		.clk(cclk), 
		.TxD_start(start), 
		.TxD_data(data), 
		.TxD(TxD), 
		.TxD_busy(busy), 
		.BitTick(BitTick)
	);
	initial begin
		// Initialize Inputs
		ADC_in = 0;
		cclk = 0;
		reset = 0;
		data = 1;
		start = 0;
		// Wait 100 ns for global reset to finish
		#100;
      start = 1;
		// Add stimulus here

	end
	always#4cclk = ~cclk;
endmodule

