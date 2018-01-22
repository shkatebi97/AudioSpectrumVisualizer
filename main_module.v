`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: S.H.Katebi
// 
// Create Date:    18:51:35 12/22/2017 
// Design Name: 
// Module Name:    main_module 
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
module main_module(
    input ADC_in,
	 input cclk,
	 input reset,					//Active High
	 //output [7:0] RamOut,
    output PC_out,
	 output reg [7:0] dataOut,
	 //output ADC_R_full,
	 //output dv,
	 //output ADC_out,
    output VGA_VSync,
    output VGA_HSync,
    output [1:0]	VGA_R,
    output [1:0]	VGA_G,
    output [1:0]	VGA_B
    );	
	 
	 //***************************************** REGs *****************************************
	 
	 reg [7:0]RX_data_registered = 0;
	 
	 //***************************************** Outs *****************************************
	 
	 parameter clkFrquency = 24000000;
	
	 //****************************************************************************************
	 //***************************************** VARs *****************************************
	
	 wire [7:0] ADC_RxD_data;
	 wire ADC_RxD_data_ready;
	 
	 //***************************************** ADC ******************************************
	 
	async_receiver #(
		 .ClkFrequency(clkFrquency),
		 .Baud(57600)
		 )
		 ADC_Receiver(
		 .clk(cclk), 
		 /*.RxD(PC_out),*/.RxD(ADC_in), 
		 .RxD_data_ready(ADC_RxD_data_ready), 
		 .RxD_data(ADC_RxD_data), 
		 .RxD_idle(), 
		 .RxD_endofpacket(),
		 .OversamplingTick()
		 );
	
	//****************************************************************************************
	
	reg rd_en = 0;
	wire [10:0]rd_data_count;
	wire [7:0]ADC_R_FIFO_dout;
	
	AsyncFifo ADC_ReceiverFIFO(
	  .clk(cclk), // input rd_clk
	  /*.din(Bdout),*/.din(ADC_RxD_data), // input [7 : 0] din
	  .wr_en(ADC_RxD_data_ready),/*.wr_en(1'b1),*/ // input wr_en
	  .rd_en(rd_en), // input rd_en
	  .dout(ADC_R_FIFO_dout), // output [7 : 0] dout
	  .full(ADC_R_full), // output full
	  .empty(ADC_R_empty), // output empty
	  .valid(ADC_R_valid), // output valid
	  .data_count(rd_data_count) // output [10 : 0] rd_data_count
	);
	
	//****************************************************************************************
	//********************************** VGA Controlers **************************************
	
	wire [9:0]PixAddress;
	wire [7:0]RamOut;	
	
	VGA_controller VGA_Interface (
    .External_Data_Control(External_Data_Control), 
	 .Data(RamOut),
    .vclk(cclk),
	 .Address(PixAddress),
    .R(VGA_R), 
    .G(VGA_G), 
    .B(VGA_B), 
    .HSync(VGA_HSync), 
    .VSync(VGA_VSync)
    );
	
	//****************************************************************************************
	
	reg [7:0] dina;
	wire [7:0]data;
	wire [7:0] xk_re;
	wire [7:0] xk_im;
	wire [8:0] xk_index;
	reg [8:0]counter = 0;
	
	assign data = (xk_re*xk_re) + (xk_im*xk_im);
	
	/*newDRAM Temp (
	  .clka(cclk), // input clka
	  .wea(wea), // input [0 : 0] wea
	  .addra(counter), // input [8 : 0] addra
	  .dina(ADC_R_FIFO_dout), // input [7 : 0] dina
	  .douta(Tdouta), // output [7 : 0] douta
	  .clkb(cclk), // input clkb
	  .web(1'b0), // input [0 : 0] web
	  .addrb(PixAddress), // input [8 : 0] addrb
	  .dinb(Tdinb), // input [7 : 0] dinb
	  .doutb(RamOut) // output [7 : 0] doutb
	);*/
	
	DRAM FFTCache (
	  .clka(cclk), // input clka
	  .wea(dv), // input [0 : 0] wea
	  .addra(xk_index), // input [8 : 0] addra
	  .dina(data), // input [7 : 0] dina
	  .douta(), // output [7 : 0] douta
	  .clkb(cclk), // input clkb
	  .web(1'b0), // input [0 : 0] wea
	  .addrb(PixAddress), // input [8 : 0] addrb
	  .dinb(), // input [7 : 0] dina
	  .doutb(RamOut) // output [7 : 0] doutb
	);
	
	//****************************************************************************************
	
	reg ce = 0 , start = 0 , unload = 1 , fwd_inv_we  = 0, scale_sch_we = 0 , notZero = 0;
	reg [17:0] scale_sch = 18;
	reg [7:0] xn_re = 0;
	reg [7:0] xn_im = 0;
	
	FFT FFT_Module (
	  .clk(cclk), // input clk
	  .ce(ce), // input ce
	  .start(start), // input start
	  .unload(unload), // input unload
	  .xn_re(ADC_R_FIFO_dout),//.xn_re(FFTI),//.xn_re(InDouta),// input [7 : 0] xn_re
	  .xn_im(1'b0), // input [7 : 0] xn_im
	  .fwd_inv(1'b1), // input fwd_inv
	  .fwd_inv_we(fwd_inv_we), // input fwd_inv_we
	  .scale_sch(scale_sch), // input [9 : 0] scale_sch
	  .scale_sch_we(scale_sch_we), // input scale_sch_we
	  .rfd(rfd), // output rfd
	  .xn_index(xn_index),//.xn_index(xn_index), // output [8 : 0] xn_index
	  .busy(busy), // output busy
	  .edone(edone), // output edone
	  .done(done), // output done
	  .dv(dv), // output dv
	  .xk_index(xk_index), // output [8 : 0] xk_index
	  .xk_re(xk_re), // output [7 : 0] xk_re
	  .xk_im(xk_im) // output [7 : 0] xk_im
	);
	
	//****************************************************************************************
	
	initial begin
		fwd_inv_we = 0;
		scale_sch_we = 0;
		@(negedge cclk)
		fwd_inv_we = 1;
		scale_sch_we = 1;
	end
	
	always@(*)begin
		if(xk_re > 1)begin
			notZero = 1;
		end
	end
	
	/*always@(posedge cclk)begin
		if(counter != 0)
			counter = counter + 1;
		else begin
			wea = 0;
			rd_en = 0;
		end
		if(rd_data_count == 511)begin
			wea = 1;
			rd_en = 1;
			counter = counter + 1;
		end
	end*/
	
	
	always@(*)begin
			dataOut[0] = ADC_R_full;
			dataOut[1] = (xn_index > 10);
			dataOut[2] = rd_en;
	end
	
	//Finish initializing of the FFT
	always@(negedge cclk)begin
		if(fwd_inv_we && scale_sch_we)begin
			fwd_inv_we = 0;
			scale_sch_we = 0;
			start = 1;
			unload = 1;
		end
	end

	reg [8:0]tCounter = 0;
	//Manage Start Conversion Order and Manage reading from FIFO
	always@(posedge cclk)begin
		if(rd_en)
			tCounter = tCounter + 1;
		if(rd_data_count == 511)begin
			ce = 1;
			rd_en = 1;
			tCounter = 0;
		end
		if(xk_index == 511)
			ce = 0;
		if(tCounter == 511)begin
			rd_en = 0;
			tCounter = 0;
		end
	end
	
endmodule
