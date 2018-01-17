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
	 output [7:0] RamOut,
    output PC_out,
	 output ADC_R_empty,
	 output PC_TxD_busy_LED,
	 output ADC_RxD_idle,
	 //output ADC_out,
    output VGA_VSync,
    output VGA_HSync,
    output [1:0]	VGA_R,
    output [1:0]	VGA_G,
    output [1:0]	VGA_B
    );	
	 
	 //***************************************** REGs *****************************************
	 
	 reg ADC_in_registered = 1;
	 reg [9:0]X_SH = 0;
	 reg [9:0]Y_SH = 0;
	 reg [15:0]TxD_busy_LED = 0;
	 reg data_ready_registered;
	 reg [7:0]RX_data_registered = 0;
	 
	 //***************************************** Outs *****************************************
	 
	 parameter clkFrquency = 24000000;
	
	 //****************************************************************************************
	 //***************************************** VARs *****************************************
	 
	 wire ADC_T_SmartClk;
	 wire [7:0] ADC_TxD_data;
	 wire [7:0] ADC_RxD_data;
	 wire RxD_FIFO_WR_EN;
	 wire RxD_FIFO_RD_EN;
	 wire [7:0] ADC_R_FIFO_dout;
	 wire newDataReady;
	 
	 //***************************************** ASSIGNs **************************************
	 
	 assign ADC_TxD_data = 0;
	 assign PC_TxD_busy_LED = (TxD_busy_LED != 0)?(1'b1):(1'b0);
	 assign newDataReady = data_ready_registered | ADC_RxD_data_ready;
	 always@(negedge ADC_OversamplingTick)data_ready_registered <= ADC_RxD_data_ready;
	 always@(negedge ADC_OversamplingTick)RX_data_registered <= ADC_RxD_data;
	 
	 //***************************************** ADC ******************************************
	 
	 /*async_transmitter #(
		 .ClkFrequency(clkFrquency),
		 .Baud(115200)
		 )
		 ADC_Transmitter(
		 .clk(cclk), 
		 .TxD_start(ADC_R_empty), 
		 .TxD_data(ADC_TxD_data), 
		 .TxD(ADC_out), 
		 .TxD_busy(ADC_TxD_busy),
		 .BitTick(ADC_BitTick)
		 );*/
		 
	async_receiver #(
		 .ClkFrequency(clkFrquency),
		 .Baud(115200)
		 )
		 ADC_Receiver(
		 .clk(cclk), 
		 .RxD(ADC_in_registered), 
		 .RxD_data_ready(ADC_RxD_data_ready), 
		 .RxD_data(ADC_RxD_data), 
		 .RxD_idle(ADC_RxD_idle), 
		 .RxD_endofpacket(ADC_RxD_endofpacket),
		 .OversamplingTick(ADC_OversamplingTick)
		 );	
		 
	 //****************************************************************************************
	 //***************************************** VARs *****************************************
	 
	 wire PC_T_SmartClk;
	 wire [7:0] PC_TxD_data;
	 wire PC_T_start;
	 
	 //***************************************** ASSIGNs **************************************
	 
	 assign PC_T_start = !ADC_R_empty | ADC_RxD_data_ready;
	 
	 //***************************************** PC *******************************************
	 
	 async_transmitter #(
		 .ClkFrequency(clkFrquency),
		 .Baud(115200)
		 )
		 PC_Transmitter(
		 .clk(cclk), 
		 .TxD_start(ADC_R_valid),
		 .TxD_data(ADC_R_FIFO_dout), 
		 .TxD(PC_out), 
		 .TxD_busy(PC_TxD_busy),
		 .BitTick(PC_BitTick)
		 );
		 
	/*async_receiver #(
		 .ClkFrequency(24000000),
		 .Baud(115200)
		 )
		 PC_Receiver(
		 .clk(cclk), 
		 .RxD(PC_RxD), 
		 .RxD_data_ready(PC_RxD_data_ready), 
		 .RxD_data(PC_RxD_data), 
		 .RxD_idle(PC_RxD_idle), 
		 .RxD_endofpacket(PC_RxD_endofpacket),
		 .OversamplingTick(PC_OversamplingTick)
		 );*/
		 
	//****************************************************************************************
	//****************************************************************************************
	
	/*reg [7:0] PC_T_FIFO_din;
	reg PC_T_wr_en , ADC_R_rd_en;
	wire PC_T_AFIFO_RE;
	assign PC_T_AFIFO_RE = !PC_TxD_busy;																			//PC_TransmitterFIFO Read Enable Signal
	//assign PC_T_AFIFO_CLK = !PC_TxD_busy;
	
	AsyncFifo PC_TransmitterFIFO(
	  .rst(reset),
	  .wr_clk(cclk), // input wr_clk
	  .rd_clk(cclk), // input rd_clk
	  .din(PC_T_FIFO_din), // input [7 : 0] din
	  .wr_en(PC_T_wr_en), // input wr_en
	  .rd_en(PC_T_AFIFO_RE), // input rd_en
	  .dout(PC_TxD_data), // output [7 : 0] dout
	  .full(PC_T_full), // output full
	  .empty(PC_T_empty) // output empty
	  //.valid(PC_T_valid) // output valid
	);*/
	
	/*reg [7:0] ADC_T_FIFO_din;
	reg ADC_T_wr_en;
	wire ADC_T_AFIFO_RE;
	assign ADC_T_AFIFO_RE = !ADC_TxD_busy;																			//ADC_TransmitterFIFO Read Enable Signal
	
	AsyncFifo ADC_TransmitterFIFO(
	  .rst(reset),
	  .wr_clk(cclk), // input wr_clk
	  .rd_clk(ADC_BitTick), // input rd_clk
	  .din(ADC_T_FIFO_din), // input [7 : 0] din
	  .wr_en(ADC_T_wr_en), // input wr_en
	  .rd_en(ADC_T_AFIFO_RE), // input rd_en
	  .dout(ADC_TxD_data), // output [7 : 0] dout
	  .full(ADC_T_full), // output full
	  .empty(ADC_T_empty), // output empty
	  //.valid(PC_R_valid) // output valid
	);*/
	
	
	AsyncFifo ADC_ReceiverFIFO(
	  .rst(1'b0),
	  .wr_clk(ADC_OversamplingTick), // input wr_clk
	  .rd_clk(cclk), // input rd_clk
	  .din(RX_data_registered), // input [7 : 0] din
	  .wr_en(data_ready_registered), // input wr_en
	  .rd_en(1'b1), // input rd_en
	  .dout(ADC_R_FIFO_dout), // output [7 : 0] dout
	  .full(ADC_R_full), // output full
	  .empty(ADC_R_empty), // output empty
	  .valid(ADC_R_valid), // output valid
	  .rd_data_count(rd_data_count) // output [10 : 0] rd_data_count
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
	
	reg wea = 0;
	reg [8:0]addra;
	reg [7:0] dina;
	wire [7:0] xk_re;
	wire [7:0] xk_im;
	wire [8:0] xk_index;
	wire dv;
	
	wire [7:0] data;
	
	assign data = (((xk_re*xk_re + xk_im*xk_im)*255)/130050);
	
	DRAM FFTCache (
	  .clka(cclk), // input clka
	  /*.wea(1'b0),*/.wea(dv), // input [0 : 0] wea
	  .addra(xk_index), // input [8 : 0] addra
	  .dina(data), // input [7 : 0] dina
	  .clkb(cclk), // input clkb
	  .addrb(PixAddress), // input [8 : 0] addrb
	  .doutb(RamOut) // output [7 : 0] doutb
	);
	
	//****************************************************************************************
	
	wire start;
	reg [8 : 0]CCLkCounter = 0;
	reg ce;
	
	assign start = 1;//(rd_data_count > 512);
	
	Input_DRAM FFT_Input(
	  .clka(cclk), // input clka
	  .addra(xn_index), // input [8 : 0] addra
	  .douta(InDouta) // output [7 : 0] douta
	);
	
	always@(*)begin
		if(/*(rd_data_count > 512) && */rfd)
			ce = 1;
		if(done)
			ce = 0;
	end
	
	reg fwd_inv_we , scale_sch_we;
	
	FFT FFT_Module (
	  .clk(cclk), // input clk
	  .ce(ce), // input ce
	  .start(start), // input start
	  .unload(unload), // input unload
	  .xn_re(InDouta),//.xn_re(ADC_R_FIFO_dout), // input [7 : 0] xn_re
	  .xn_im(1'b0), // input [7 : 0] xn_im
	  .fwd_inv(1'b0), // input fwd_inv
	  .fwd_inv_we(fwd_inv_we), // input fwd_inv_we
	  .scale_sch(1'b1), // input [9 : 0] scale_sch
	  .scale_sch_we(scale_sch_we), // input scale_sch_we
	  .rfd(rfd), // output rfd
	  .xn_index(xn_index), // output [8 : 0] xn_index
	  .busy(busy), // output busy
	  .edone(edone), // output edone
	  .done(done), // output done
	  .dv(dv), // output dv
	  .xk_index(xk_index), // output [8 : 0] xk_index
	  .xk_re(xk_re), // output [7 : 0] xk_re
	  .xk_im(xk_im) // output [7 : 0] xk_im
	);
	
	//****************************************************************************************
	
	reg flag = 0;
	
	/*always@(posedge cclk)begin
		if(!flag)begin
			if(X_L_Shift)begin X_SH = X_SH + 1;flag = 1;end
			if(X_R_Shift)begin X_SH = X_SH - 1;flag = 1;end
			if(Y_R_Shift)begin Y_SH = Y_SH - 1;flag = 1;end
			if(Y_L_Shift)begin Y_SH = Y_SH + 1;flag = 1;end
		end
		else begin
			if(!(X_L_Shift||X_R_Shift||Y_L_Shift||Y_R_Shift))flag = 0;
		end
	end*/
	
	initial begin
		fwd_inv_we = 0;
		scale_sch_we = 0;
		@(negedge cclk)
		fwd_inv_we = 1;
		scale_sch_we = 1;
	end
	
	always@(negedge cclk)begin
		if(fwd_inv_we && scale_sch_we)begin
			fwd_inv_we = 0;
			scale_sch_we = 0;
		end
	end
	
	reg state = 0;
	always@(posedge cclk)begin
		wea = 1;
		addra = addra + 1;
		if(state)
			dina = dina + 1;
		state = ~state;
	end
	
	//this is for registring input
	always@(posedge cclk)begin
		if(reset) ADC_in_registered = ADC_in;
		else ADC_in_registered = 0;
	end
	
	always@(posedge cclk)begin
		if(newDataReady || TxD_busy_LED != 0)
			TxD_busy_LED = TxD_busy_LED + 1;
		else
			TxD_busy_LED = 0;
	end
	//connect ADC_ReceiverFIFO to PC_TransmitterFIFO:
	//First ccclk check if ADC_ReceiverFIFO is not empty,
	//	enable Read of ADC_R untill next cclk.
	//In Second cclk it give the ADC_R_FIFO_dout to PC_T_FIFO_din
	//	and enable Write of PC_T untill next cclk.
	//In Third cclk it disable PC_T_wr_en.
	/*always@(posedge cclk)begin
		if(ADC_R_rd_en)begin
			PC_T_FIFO_din = ADC_R_FIFO_dout;
			ADC_R_rd_en = 0;
			PC_T_wr_en = 1;
		end
		else if(PC_T_wr_en)begin
			PC_T_wr_en = 0;
		end
		else if(!ADC_R_empty)begin
			ADC_R_rd_en = 1;
		end
	end*/
	
endmodule
