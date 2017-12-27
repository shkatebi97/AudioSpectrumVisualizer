`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:02:01 12/26/2017
// Design Name:   async_transmitter
// Module Name:   C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2/UART_Test_Bench.v
// Project Name:  Phase2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: async_transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UART_Test_Bench;

	// Inputs
	reg clk;
	reg start;
	reg [7:0] data;
	integer state = 2'b00;
	parameter data_ready = 2'b01,
		started = 2'b10,
		waiting = 2'b00;

	// Outputs
	wire TxD;
	wire [7:0]RxD_data;
	wire BitTick;

	// Instantiate the Unit Under Test (UUT)
	async_transmitter Trans (
		.clk(clk), 
		.TxD_start(start), 
		.TxD_data(data), 
		.TxD(TxD), 
		.TxD_busy(busy), 
		.BitTick(BitTick)
	);
	async_receiver Receiv (
		 .clk(clk), 
		 .RxD(TxD), 
		 .RxD_data_ready(RxD_data_ready), 
		 .RxD_data(RxD_data), 
		 .RxD_idle(RxD_idle), 
		 .RxD_endofpacket(RxD_endofpacket), 
		 .OversamplingTick(OversamplingTick)
		 );
	
	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
	always@(posedge clk)begin
		if(!busy)begin 
			case(state)
				(waiting):begin
					data = data + 1;
					state = data_ready;
				end
				(data_ready):begin
					start = 1;
					state = started;
				end
				(started):begin 
					start = 0;
					state = waiting;
				end
			endcase
		end
	end
	always#4 clk = ~clk;
endmodule

