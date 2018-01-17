////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FFT.v
// /___/   /\     Timestamp: Wed Jan 17 12:42:22 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2_rebuild/ipcore_dir/tmp/_cg/FFT.ngc" "C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2_rebuild/ipcore_dir/tmp/_cg/FFT.v" 
// Device	: 6slx9tqg144-3
// Input file	: C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2_rebuild/ipcore_dir/tmp/_cg/FFT.ngc
// Output file	: C:/Users/S.H.A.K/Documents/Xilinx Projects/Phase2_rebuild/ipcore_dir/tmp/_cg/FFT.v
// # of Modules	: 1
// Design Name	: FFT
// Xilinx        : F:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module FFT (
  clk, ce, start, unload, fwd_inv, fwd_inv_we, scale_sch_we, rfd, busy, edone, done, dv, xn_re, xn_im, scale_sch, xn_index, xk_index, xk_re, xk_im
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input start;
  input unload;
  input fwd_inv;
  input fwd_inv_we;
  input scale_sch_we;
  output rfd;
  output busy;
  output edone;
  output done;
  output dv;
  input [7 : 0] xn_re;
  input [7 : 0] xn_im;
  input [17 : 0] scale_sch;
  output [8 : 0] xn_index;
  output [8 : 0] xk_index;
  output [7 : 0] xk_re;
  output [7 : 0] xk_im;
  
  // synthesis translate_off
  
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ;
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire sig0000028a;
  wire sig0000028b;
  wire sig0000028c;
  wire sig0000028d;
  wire sig0000028e;
  wire sig0000028f;
  wire sig00000290;
  wire sig00000291;
  wire sig00000292;
  wire sig00000293;
  wire sig00000294;
  wire sig00000295;
  wire sig00000296;
  wire sig00000297;
  wire sig00000298;
  wire sig00000299;
  wire sig0000029a;
  wire sig0000029b;
  wire sig0000029c;
  wire sig0000029d;
  wire sig0000029e;
  wire sig0000029f;
  wire sig000002a0;
  wire sig000002a1;
  wire sig000002a2;
  wire sig000002a3;
  wire sig000002a4;
  wire sig000002a5;
  wire sig000002a6;
  wire sig000002a7;
  wire sig000002a8;
  wire sig000002a9;
  wire sig000002aa;
  wire sig000002ab;
  wire sig000002ac;
  wire sig000002ad;
  wire sig000002ae;
  wire sig000002af;
  wire sig000002b0;
  wire sig000002b1;
  wire sig000002b2;
  wire sig000002b3;
  wire sig000002b4;
  wire sig000002b5;
  wire sig000002b6;
  wire sig000002b7;
  wire sig000002b8;
  wire sig000002b9;
  wire sig000002ba;
  wire sig000002bb;
  wire sig000002bc;
  wire sig000002bd;
  wire sig000002be;
  wire sig000002bf;
  wire sig000002c0;
  wire sig000002c1;
  wire sig000002c2;
  wire sig000002c3;
  wire sig000002c4;
  wire sig000002c5;
  wire sig000002c6;
  wire sig000002c7;
  wire sig000002c8;
  wire sig000002c9;
  wire sig000002ca;
  wire sig000002cb;
  wire sig000002cc;
  wire sig000002cd;
  wire sig000002ce;
  wire sig000002cf;
  wire sig000002d0;
  wire sig000002d1;
  wire sig000002d2;
  wire sig000002d3;
  wire sig000002d4;
  wire sig000002d5;
  wire sig000002d6;
  wire sig000002d7;
  wire sig000002d8;
  wire sig000002d9;
  wire sig000002da;
  wire sig000002db;
  wire sig000002dc;
  wire sig000002dd;
  wire sig000002de;
  wire sig000002df;
  wire sig000002e0;
  wire sig000002e1;
  wire sig000002e2;
  wire sig000002e3;
  wire sig000002e4;
  wire sig000002e5;
  wire sig000002e6;
  wire sig000002e7;
  wire sig000002e8;
  wire sig000002e9;
  wire sig000002ea;
  wire sig000002eb;
  wire sig000002ec;
  wire sig000002ed;
  wire sig000002ee;
  wire sig000002ef;
  wire sig000002f0;
  wire sig000002f1;
  wire sig000002f2;
  wire sig000002f3;
  wire sig000002f4;
  wire sig000002f5;
  wire sig000002f6;
  wire sig000002f7;
  wire sig000002f8;
  wire sig000002f9;
  wire sig000002fa;
  wire sig000002fb;
  wire sig000002fc;
  wire sig000002fd;
  wire sig000002fe;
  wire sig000002ff;
  wire sig00000300;
  wire sig00000301;
  wire sig00000302;
  wire sig00000303;
  wire sig00000304;
  wire sig00000305;
  wire sig00000306;
  wire sig00000307;
  wire sig00000308;
  wire sig00000309;
  wire sig0000030a;
  wire sig0000030b;
  wire sig0000030c;
  wire sig0000030d;
  wire sig0000030e;
  wire sig0000030f;
  wire sig00000310;
  wire sig00000311;
  wire sig00000312;
  wire sig00000313;
  wire sig00000314;
  wire sig00000315;
  wire sig00000316;
  wire sig00000317;
  wire sig00000318;
  wire sig00000319;
  wire sig0000031a;
  wire sig0000031b;
  wire sig0000031c;
  wire sig0000031d;
  wire sig0000031e;
  wire sig0000031f;
  wire sig00000320;
  wire sig00000321;
  wire sig00000322;
  wire sig00000323;
  wire sig00000324;
  wire sig00000325;
  wire sig00000326;
  wire sig00000327;
  wire sig00000328;
  wire sig00000329;
  wire sig0000032a;
  wire sig0000032b;
  wire sig0000032c;
  wire sig0000032d;
  wire sig0000032e;
  wire sig0000032f;
  wire sig00000330;
  wire sig00000331;
  wire sig00000332;
  wire sig00000333;
  wire sig00000334;
  wire sig00000335;
  wire sig00000336;
  wire sig00000337;
  wire sig00000338;
  wire sig00000339;
  wire sig0000033a;
  wire sig0000033b;
  wire sig0000033c;
  wire sig0000033d;
  wire sig0000033e;
  wire sig0000033f;
  wire sig00000340;
  wire sig00000341;
  wire sig00000342;
  wire sig00000343;
  wire sig00000344;
  wire sig00000345;
  wire sig00000346;
  wire sig00000347;
  wire sig00000348;
  wire sig00000349;
  wire sig0000034a;
  wire sig0000034b;
  wire sig0000034c;
  wire sig0000034d;
  wire sig0000034e;
  wire sig0000034f;
  wire sig00000350;
  wire sig00000351;
  wire sig00000352;
  wire sig00000353;
  wire sig00000354;
  wire sig00000355;
  wire sig00000356;
  wire sig00000357;
  wire sig00000358;
  wire sig00000359;
  wire sig0000035a;
  wire sig0000035b;
  wire sig0000035c;
  wire sig0000035d;
  wire sig0000035e;
  wire sig0000035f;
  wire sig00000360;
  wire sig00000361;
  wire sig00000362;
  wire sig00000363;
  wire sig00000364;
  wire sig00000365;
  wire sig00000366;
  wire sig00000367;
  wire sig00000368;
  wire sig00000369;
  wire sig0000036a;
  wire sig0000036b;
  wire sig0000036c;
  wire sig0000036d;
  wire sig0000036e;
  wire sig0000036f;
  wire sig00000370;
  wire sig00000371;
  wire sig00000372;
  wire sig00000373;
  wire sig00000374;
  wire sig00000375;
  wire sig00000376;
  wire sig00000377;
  wire sig00000378;
  wire sig00000379;
  wire sig0000037a;
  wire sig0000037b;
  wire sig0000037c;
  wire sig0000037d;
  wire sig0000037e;
  wire sig0000037f;
  wire sig00000380;
  wire sig00000381;
  wire sig00000382;
  wire sig00000383;
  wire sig00000384;
  wire sig00000385;
  wire sig00000386;
  wire sig00000387;
  wire sig00000388;
  wire sig00000389;
  wire sig0000038a;
  wire sig0000038b;
  wire sig0000038c;
  wire sig0000038d;
  wire sig0000038e;
  wire sig0000038f;
  wire sig00000390;
  wire sig00000391;
  wire sig00000392;
  wire sig00000393;
  wire sig00000394;
  wire sig00000395;
  wire sig00000396;
  wire sig00000397;
  wire sig00000398;
  wire sig00000399;
  wire sig0000039a;
  wire sig0000039b;
  wire sig0000039c;
  wire sig0000039d;
  wire sig0000039e;
  wire sig0000039f;
  wire sig000003a0;
  wire sig000003a1;
  wire sig000003a2;
  wire sig000003a3;
  wire sig000003a4;
  wire sig000003a5;
  wire sig000003a6;
  wire sig000003a7;
  wire sig000003a8;
  wire sig000003a9;
  wire sig000003aa;
  wire sig000003ab;
  wire sig000003ac;
  wire sig000003ad;
  wire sig000003ae;
  wire sig000003af;
  wire sig000003b0;
  wire sig000003b1;
  wire sig000003b2;
  wire sig000003b3;
  wire sig000003b4;
  wire sig000003b5;
  wire sig000003b6;
  wire sig000003b7;
  wire sig000003b8;
  wire sig000003b9;
  wire sig000003ba;
  wire sig000003bb;
  wire sig000003bc;
  wire sig000003bd;
  wire sig000003be;
  wire sig000003bf;
  wire sig000003c0;
  wire sig000003c1;
  wire sig000003c2;
  wire sig000003c3;
  wire sig000003c4;
  wire sig000003c5;
  wire sig000003c6;
  wire sig000003c7;
  wire sig000003c8;
  wire sig000003c9;
  wire sig000003ca;
  wire sig000003cb;
  wire sig000003cc;
  wire sig000003cd;
  wire sig000003ce;
  wire sig000003cf;
  wire sig000003d0;
  wire sig000003d1;
  wire sig000003d2;
  wire sig000003d3;
  wire sig000003d4;
  wire sig000003d5;
  wire sig000003d6;
  wire sig000003d7;
  wire sig000003d8;
  wire sig000003d9;
  wire sig000003da;
  wire sig000003db;
  wire sig000003dc;
  wire sig000003dd;
  wire sig000003de;
  wire sig000003df;
  wire sig000003e0;
  wire sig000003e1;
  wire sig000003e2;
  wire sig000003e3;
  wire sig000003e4;
  wire sig000003e5;
  wire sig000003e6;
  wire sig000003e7;
  wire sig000003e8;
  wire sig000003e9;
  wire sig000003ea;
  wire sig000003eb;
  wire sig000003ec;
  wire sig000003ed;
  wire sig000003ee;
  wire sig000003ef;
  wire sig000003f0;
  wire sig000003f1;
  wire sig000003f2;
  wire sig000003f3;
  wire sig000003f4;
  wire sig000003f5;
  wire sig000003f6;
  wire sig000003f7;
  wire sig000003f8;
  wire sig000003f9;
  wire sig000003fa;
  wire sig000003fb;
  wire sig000003fc;
  wire sig000003fd;
  wire sig000003fe;
  wire sig000003ff;
  wire sig00000400;
  wire sig00000401;
  wire sig00000402;
  wire sig00000403;
  wire sig00000404;
  wire sig00000405;
  wire sig00000406;
  wire sig00000407;
  wire sig00000408;
  wire sig00000409;
  wire sig0000040a;
  wire sig0000040b;
  wire sig0000040c;
  wire sig0000040d;
  wire sig0000040e;
  wire sig0000040f;
  wire sig00000410;
  wire sig00000411;
  wire sig00000412;
  wire sig00000413;
  wire sig00000414;
  wire \blk000000e4/sig0000045b ;
  wire \blk000000e4/sig0000044a ;
  wire \blk000000e4/sig00000449 ;
  wire \blk000000e4/sig00000448 ;
  wire \blk000000e4/sig00000447 ;
  wire \blk000000e4/sig00000446 ;
  wire \blk000000e4/sig00000445 ;
  wire \blk000000e4/sig00000444 ;
  wire \blk000000e4/sig00000443 ;
  wire \blk000000e4/sig00000442 ;
  wire \blk000000e4/sig00000441 ;
  wire \blk000000e4/sig00000440 ;
  wire \blk000000e4/sig0000043f ;
  wire \blk000000e4/sig0000043e ;
  wire \blk000000e4/sig0000043d ;
  wire \blk000000e4/sig0000043c ;
  wire \blk000000e4/sig0000043b ;
  wire \blk00000117/blk00000118/sig00000467 ;
  wire \blk00000117/blk00000118/sig00000466 ;
  wire \blk00000117/blk00000118/sig00000465 ;
  wire \blk0000013d/blk0000013e/sig00000472 ;
  wire \blk0000013d/blk0000013e/sig00000471 ;
  wire \blk0000013d/blk0000013e/sig00000470 ;
  wire \blk00000143/sig000004c1 ;
  wire \blk00000143/sig000004c0 ;
  wire \blk00000143/sig000004bf ;
  wire \blk00000143/sig000004be ;
  wire \blk00000143/sig000004bd ;
  wire \blk00000143/sig000004bc ;
  wire \blk00000143/sig000004bb ;
  wire \blk00000143/sig000004ba ;
  wire \blk00000143/sig000004b9 ;
  wire \blk00000143/sig000004b8 ;
  wire \blk00000143/sig000004b7 ;
  wire \blk00000143/sig000004b6 ;
  wire \blk00000143/sig000004b5 ;
  wire \blk00000143/sig000004b4 ;
  wire \blk00000143/sig000004b3 ;
  wire \blk00000143/sig000004b2 ;
  wire \blk00000143/sig000004b1 ;
  wire \blk00000143/sig000004b0 ;
  wire \blk00000143/sig000004af ;
  wire \blk00000143/sig000004ae ;
  wire \blk00000143/sig000004ad ;
  wire \blk00000143/sig000004ac ;
  wire \blk00000143/sig000004ab ;
  wire \blk00000143/sig000004aa ;
  wire \blk00000143/sig000004a9 ;
  wire \blk00000143/sig000004a8 ;
  wire \blk00000143/sig000004a7 ;
  wire \blk00000143/sig000004a6 ;
  wire \blk00000143/sig000004a5 ;
  wire \blk00000143/sig000004a4 ;
  wire \blk00000143/sig000004a3 ;
  wire \blk00000143/sig000004a2 ;
  wire \blk00000143/sig000004a1 ;
  wire \blk00000143/sig000004a0 ;
  wire \blk00000143/sig0000049f ;
  wire \blk00000143/sig0000049e ;
  wire \blk00000143/sig0000049d ;
  wire \blk00000143/sig0000049c ;
  wire \blk00000143/sig0000049b ;
  wire \blk00000178/sig00000510 ;
  wire \blk00000178/sig0000050f ;
  wire \blk00000178/sig0000050e ;
  wire \blk00000178/sig0000050d ;
  wire \blk00000178/sig0000050c ;
  wire \blk00000178/sig0000050b ;
  wire \blk00000178/sig0000050a ;
  wire \blk00000178/sig00000509 ;
  wire \blk00000178/sig00000508 ;
  wire \blk00000178/sig00000507 ;
  wire \blk00000178/sig00000506 ;
  wire \blk00000178/sig00000505 ;
  wire \blk00000178/sig00000504 ;
  wire \blk00000178/sig00000503 ;
  wire \blk00000178/sig00000502 ;
  wire \blk00000178/sig00000501 ;
  wire \blk00000178/sig00000500 ;
  wire \blk00000178/sig000004ff ;
  wire \blk00000178/sig000004fe ;
  wire \blk00000178/sig000004fd ;
  wire \blk00000178/sig000004fc ;
  wire \blk00000178/sig000004fb ;
  wire \blk00000178/sig000004fa ;
  wire \blk00000178/sig000004f9 ;
  wire \blk00000178/sig000004f8 ;
  wire \blk00000178/sig000004f7 ;
  wire \blk00000178/sig000004f6 ;
  wire \blk00000178/sig000004f5 ;
  wire \blk00000178/sig000004f4 ;
  wire \blk00000178/sig000004f3 ;
  wire \blk00000178/sig000004f2 ;
  wire \blk00000178/sig000004f1 ;
  wire \blk00000178/sig000004f0 ;
  wire \blk00000178/sig000004ef ;
  wire \blk00000178/sig000004ee ;
  wire \blk00000178/sig000004ed ;
  wire \blk00000178/sig000004ec ;
  wire \blk00000178/sig000004eb ;
  wire \blk00000178/sig000004ea ;
  wire \blk000001ad/sig00000542 ;
  wire \blk000001ad/sig00000541 ;
  wire \blk000001ad/sig00000540 ;
  wire \blk000001ad/sig0000053f ;
  wire \blk000001ad/sig0000053e ;
  wire \blk000001ad/sig0000053d ;
  wire \blk000001ad/sig0000053c ;
  wire \blk000001ad/sig0000053b ;
  wire \blk000001ad/sig0000053a ;
  wire \blk000001ad/sig00000539 ;
  wire \blk000001ad/sig00000538 ;
  wire \blk000001ad/sig00000537 ;
  wire \blk000001ad/sig00000536 ;
  wire \blk000001ad/sig00000535 ;
  wire \blk000001ad/sig00000534 ;
  wire \blk000001ad/sig00000533 ;
  wire \blk000001ad/sig00000532 ;
  wire \blk000001ad/sig00000531 ;
  wire \blk000001ad/sig00000530 ;
  wire \blk000001ad/sig0000052f ;
  wire \blk000001ad/sig0000052e ;
  wire \blk000001ad/sig0000052d ;
  wire \blk000001ad/sig0000052c ;
  wire \blk000001ad/sig0000052b ;
  wire \blk000001ad/sig0000052a ;
  wire \blk000001d4/sig00000574 ;
  wire \blk000001d4/sig00000573 ;
  wire \blk000001d4/sig00000572 ;
  wire \blk000001d4/sig00000571 ;
  wire \blk000001d4/sig00000570 ;
  wire \blk000001d4/sig0000056f ;
  wire \blk000001d4/sig0000056e ;
  wire \blk000001d4/sig0000056d ;
  wire \blk000001d4/sig0000056c ;
  wire \blk000001d4/sig0000056b ;
  wire \blk000001d4/sig0000056a ;
  wire \blk000001d4/sig00000569 ;
  wire \blk000001d4/sig00000568 ;
  wire \blk000001d4/sig00000567 ;
  wire \blk000001d4/sig00000566 ;
  wire \blk000001d4/sig00000565 ;
  wire \blk000001d4/sig00000564 ;
  wire \blk000001d4/sig00000563 ;
  wire \blk000001d4/sig00000562 ;
  wire \blk000001d4/sig00000561 ;
  wire \blk000001d4/sig00000560 ;
  wire \blk000001d4/sig0000055f ;
  wire \blk000001d4/sig0000055e ;
  wire \blk000001d4/sig0000055d ;
  wire \blk000001d4/sig0000055c ;
  wire \blk00000283/sig00000594 ;
  wire \blk00000283/sig00000593 ;
  wire \blk00000283/sig00000592 ;
  wire \blk00000283/sig00000591 ;
  wire \blk00000283/sig00000590 ;
  wire \blk00000283/sig0000058f ;
  wire \blk00000283/sig0000058e ;
  wire \blk00000283/sig0000058d ;
  wire \blk00000283/sig0000058c ;
  wire \blk00000283/sig0000058b ;
  wire \blk00000283/sig0000058a ;
  wire \blk00000283/sig00000589 ;
  wire \blk00000283/sig00000588 ;
  wire \blk00000283/sig00000587 ;
  wire \blk00000283/sig00000586 ;
  wire \blk0000029b/sig000005b4 ;
  wire \blk0000029b/sig000005b3 ;
  wire \blk0000029b/sig000005b2 ;
  wire \blk0000029b/sig000005b1 ;
  wire \blk0000029b/sig000005b0 ;
  wire \blk0000029b/sig000005af ;
  wire \blk0000029b/sig000005ae ;
  wire \blk0000029b/sig000005ad ;
  wire \blk0000029b/sig000005ac ;
  wire \blk0000029b/sig000005ab ;
  wire \blk0000029b/sig000005aa ;
  wire \blk0000029b/sig000005a9 ;
  wire \blk0000029b/sig000005a8 ;
  wire \blk0000029b/sig000005a7 ;
  wire \blk0000029b/sig000005a6 ;
  wire \blk00000347/blk00000348/sig000005c0 ;
  wire \blk00000347/blk00000348/sig000005bf ;
  wire \blk00000347/blk00000348/sig000005be ;
  wire \blk00000378/sig000005e4 ;
  wire \blk00000378/sig000005e3 ;
  wire \blk00000378/sig000005e2 ;
  wire \blk00000378/sig000005e1 ;
  wire \blk00000378/sig000005e0 ;
  wire \blk00000378/sig000005df ;
  wire \blk00000378/sig000005de ;
  wire \blk00000378/sig000005dd ;
  wire \blk00000378/sig000005dc ;
  wire \blk00000378/sig000005db ;
  wire \blk00000378/sig000005da ;
  wire \blk00000378/sig000005d9 ;
  wire \blk00000378/sig000005d8 ;
  wire \blk00000378/sig000005d7 ;
  wire \blk00000378/sig000005d6 ;
  wire \blk00000378/sig000005d5 ;
  wire \blk00000378/sig000005d4 ;
  wire \blk00000378/sig000005d3 ;
  wire \blk000003e5/blk000003e6/sig00000617 ;
  wire \blk000003e5/blk000003e6/sig00000616 ;
  wire \blk000003e5/blk000003e6/sig00000615 ;
  wire \blk000003e5/blk000003e6/sig00000614 ;
  wire \blk000003e5/blk000003e6/sig00000613 ;
  wire \blk000003e5/blk000003e6/sig00000612 ;
  wire \blk000003e5/blk000003e6/sig00000611 ;
  wire \blk000003e5/blk000003e6/sig00000610 ;
  wire \blk000003e5/blk000003e6/sig0000060f ;
  wire \blk000003e5/blk000003e6/sig0000060e ;
  wire \blk000003e5/blk000003e6/sig0000060d ;
  wire \blk000003fb/blk000003fc/sig00000622 ;
  wire \blk000003fb/blk000003fc/sig00000621 ;
  wire \blk000003fb/blk000003fc/sig00000620 ;
  wire \blk00000401/sig00000632 ;
  wire \blk00000401/sig00000631 ;
  wire \blk00000401/sig00000630 ;
  wire \blk00000401/sig0000062f ;
  wire \blk00000401/sig0000062e ;
  wire \blk00000401/sig0000062d ;
  wire \blk00000401/sig0000062c ;
  wire \blk00000401/sig0000062b ;
  wire \blk0000040e/blk0000040f/sig0000063e ;
  wire \blk0000040e/blk0000040f/sig0000063d ;
  wire \blk0000040e/blk0000040f/sig0000063c ;
  wire \blk00000414/blk00000415/sig0000064a ;
  wire \blk00000414/blk00000415/sig00000649 ;
  wire \blk00000414/blk00000415/sig00000648 ;
  wire \blk0000041a/blk0000041b/sig00000656 ;
  wire \blk0000041a/blk0000041b/sig00000655 ;
  wire \blk0000041a/blk0000041b/sig00000654 ;
  wire \blk00000420/blk00000421/sig00000662 ;
  wire \blk00000420/blk00000421/sig00000661 ;
  wire \blk00000420/blk00000421/sig00000660 ;
  wire \blk00000443/sig00000692 ;
  wire \blk00000443/sig00000691 ;
  wire \blk00000443/sig00000690 ;
  wire \blk00000443/sig0000068f ;
  wire \blk00000443/sig0000068e ;
  wire \blk00000443/sig0000068d ;
  wire \blk00000443/sig0000068c ;
  wire \blk00000443/sig0000068b ;
  wire \blk00000443/sig0000068a ;
  wire \blk00000443/sig00000689 ;
  wire \blk00000443/sig00000688 ;
  wire \blk00000443/sig00000687 ;
  wire \blk00000443/sig00000686 ;
  wire \blk00000443/sig00000685 ;
  wire \blk00000443/sig00000684 ;
  wire \blk00000443/sig00000683 ;
  wire \blk00000443/sig00000682 ;
  wire \blk00000443/sig00000681 ;
  wire \blk00000443/sig00000680 ;
  wire \blk00000443/sig0000067f ;
  wire \blk00000443/sig0000067e ;
  wire \blk00000443/sig0000067d ;
  wire \blk00000443/sig0000067c ;
  wire \blk00000443/sig0000067b ;
  wire \blk00000443/sig0000067a ;
  wire \blk00000443/sig00000679 ;
  wire \blk00000443/sig00000678 ;
  wire NLW_blk0000008b_CARRYOUTF_UNCONNECTED;
  wire NLW_blk0000008b_CARRYOUT_UNCONNECTED;
  wire \NLW_blk0000008b_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<47>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<46>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<45>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<44>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<43>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<42>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<41>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<40>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<39>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<38>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<37>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<36>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<35>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<34>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<33>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<32>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<31>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<30>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<29>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<28>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<27>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<26>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<25>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<24>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<23>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<22>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<21>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<20>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<19>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<18>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<0>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<35>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<34>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<33>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<32>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<31>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<30>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<29>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<28>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<27>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<26>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<25>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<24>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<23>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<22>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<21>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<20>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<19>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<18>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<0>_UNCONNECTED ;
  wire NLW_blk0000008c_CARRYOUTF_UNCONNECTED;
  wire NLW_blk0000008c_CARRYOUT_UNCONNECTED;
  wire \NLW_blk0000008c_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<47>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<46>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<45>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<44>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<43>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<42>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<41>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<40>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<39>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<38>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<37>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<36>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<0>_UNCONNECTED ;
  wire NLW_blk00000219_Q_UNCONNECTED;
  wire NLW_blk0000021a_Q_UNCONNECTED;
  wire NLW_blk00000239_Q_UNCONNECTED;
  wire NLW_blk0000023a_Q_UNCONNECTED;
  wire NLW_blk00000270_Q_UNCONNECTED;
  wire NLW_blk00000282_Q_UNCONNECTED;
  wire \NLW_blk000004fd_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<15>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<14>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<13>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<12>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<11>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<10>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<9>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIADI<8>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_blk000004fd_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<14>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<13>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<12>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<11>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<10>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<9>_UNCONNECTED ;
  wire \NLW_blk000004fd_DOBDO<8>_UNCONNECTED ;
  wire \NLW_blk000004fd_DIPADIP<1>_UNCONNECTED ;
  wire NLW_blk000004fe_Q15_UNCONNECTED;
  wire NLW_blk00000500_Q15_UNCONNECTED;
  wire NLW_blk00000502_Q15_UNCONNECTED;
  wire NLW_blk00000504_Q15_UNCONNECTED;
  wire NLW_blk00000506_Q15_UNCONNECTED;
  wire NLW_blk00000508_Q15_UNCONNECTED;
  wire NLW_blk0000050a_Q15_UNCONNECTED;
  wire NLW_blk0000050c_Q15_UNCONNECTED;
  wire NLW_blk0000050e_Q15_UNCONNECTED;
  wire NLW_blk00000510_Q15_UNCONNECTED;
  wire NLW_blk00000512_Q15_UNCONNECTED;
  wire NLW_blk00000514_Q15_UNCONNECTED;
  wire \NLW_blk000000e4/blk000000f6_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<7>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<6>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<5>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<4>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<3>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<2>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<0>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk00000117/blk00000118/blk0000011b_Q15_UNCONNECTED ;
  wire \NLW_blk0000013d/blk0000013e/blk00000141_Q15_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001c5_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b9_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b8_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b7_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b6_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b5_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b4_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b3_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b2_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b1_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b0_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001af_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001ae_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001ec_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001e0_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001df_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001de_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001dd_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001dc_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001db_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001da_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d9_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d8_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d7_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d6_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d5_O_UNCONNECTED ;
  wire \NLW_blk00000347/blk00000348/blk0000034b_Q15_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003f9_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003f7_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003f5_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003f3_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003f1_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003ef_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003ed_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003eb_Q31_UNCONNECTED ;
  wire \NLW_blk000003e5/blk000003e6/blk000003e9_Q31_UNCONNECTED ;
  wire \NLW_blk000003fb/blk000003fc/blk000003ff_Q15_UNCONNECTED ;
  wire \NLW_blk0000040e/blk0000040f/blk00000412_Q15_UNCONNECTED ;
  wire \NLW_blk00000414/blk00000415/blk00000418_Q15_UNCONNECTED ;
  wire \NLW_blk0000041a/blk0000041b/blk0000041e_Q15_UNCONNECTED ;
  wire \NLW_blk00000420/blk00000421/blk00000424_Q15_UNCONNECTED ;
  wire [8 : 0] NlwRenamedSig_OI_xn_index;
  wire [8 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i ;
  wire [7 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q ;
  wire [7 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q ;
  assign
    xn_index[8] = NlwRenamedSig_OI_xn_index[8],
    xn_index[7] = NlwRenamedSig_OI_xn_index[7],
    xn_index[6] = NlwRenamedSig_OI_xn_index[6],
    xn_index[5] = NlwRenamedSig_OI_xn_index[5],
    xn_index[4] = NlwRenamedSig_OI_xn_index[4],
    xn_index[3] = NlwRenamedSig_OI_xn_index[3],
    xn_index[2] = NlwRenamedSig_OI_xn_index[2],
    xn_index[1] = NlwRenamedSig_OI_xn_index[1],
    xn_index[0] = NlwRenamedSig_OI_xn_index[0],
    xk_index[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [8],
    xk_index[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [7],
    xk_index[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6],
    xk_index[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5],
    xk_index[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4],
    xk_index[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3],
    xk_index[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2],
    xk_index[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1],
    xk_index[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0],
    xk_re[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7],
    xk_re[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6],
    xk_re[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5],
    xk_re[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4],
    xk_re[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3],
    xk_re[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2],
    xk_re[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1],
    xk_re[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0],
    xk_im[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7],
    xk_im[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6],
    xk_im[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5],
    xk_im[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4],
    xk_im[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3],
    xk_im[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2],
    xk_im[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1],
    xk_im[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0],
    rfd = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ,
    busy = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ,
    edone = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ,
    done = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ,
    dv = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .CE(ce),
    .D(sig00000032),
    .R(sig00000002),
    .Q(sig00000031)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f6),
    .Q(sig0000006c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f5),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f4),
    .Q(sig0000006a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f3),
    .Q(sig00000069)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f2),
    .Q(sig00000068)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f1),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000f0),
    .Q(sig00000066)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ef),
    .Q(sig00000065)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(ce),
    .D(sig00000106),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(ce),
    .D(sig00000105),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(ce),
    .D(sig00000104),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(ce),
    .D(sig00000103),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(ce),
    .D(sig00000102),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(ce),
    .D(sig00000101),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(ce),
    .D(sig00000100),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(ce),
    .D(sig000000ff),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .CE(ce),
    .D(sig000000fe),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .CE(ce),
    .D(sig000000fd),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .CE(ce),
    .D(sig000000fc),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .CE(ce),
    .D(sig000000fb),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .CE(ce),
    .D(sig000000fa),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .CE(ce),
    .D(sig000000f9),
    .Q(sig0000006f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .CE(ce),
    .D(sig000000f8),
    .Q(sig0000006e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .CE(ce),
    .D(sig000000f7),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000045),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000001d (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000044),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000043),
    .Q(sig0000008c)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000001f (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000042),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000041),
    .Q(sig0000008a)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000021 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000040),
    .Q(sig00000089)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003f),
    .Q(sig00000088)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000023 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003e),
    .Q(sig00000087)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003d),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000025 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003c),
    .Q(sig00000085)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003b),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000027 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003a),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000039),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000029 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000038),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000037),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000002b (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000036),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000035),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000002d (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000034),
    .Q(sig0000007d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .CE(ce),
    .D(sig000000e6),
    .Q(sig0000004c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ee),
    .Q(sig00000054)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ed),
    .Q(sig00000053)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ec),
    .Q(sig00000052)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000eb),
    .Q(sig00000051)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ea),
    .Q(sig00000050)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000e9),
    .Q(sig0000004f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000e8),
    .Q(sig0000004e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000e7),
    .Q(sig0000004d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ee),
    .Q(sig00000064)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ed),
    .Q(sig00000063)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ec),
    .Q(sig00000062)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000eb),
    .Q(sig00000061)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ea),
    .Q(sig00000060)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000e9),
    .Q(sig0000005f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000e8),
    .Q(sig0000005e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000e7),
    .Q(sig0000005d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f6),
    .Q(sig0000005c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f5),
    .Q(sig0000005b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f4),
    .Q(sig0000005a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f3),
    .Q(sig00000059)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f2),
    .Q(sig00000058)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f1),
    .Q(sig00000057)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000f0),
    .Q(sig00000056)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ef),
    .Q(sig00000055)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .CE(ce),
    .D(sig00000026),
    .Q(sig00000127)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .CE(ce),
    .D(sig00000025),
    .Q(sig00000126)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .CE(ce),
    .D(sig00000024),
    .Q(sig00000125)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .CE(ce),
    .D(sig00000023),
    .Q(sig00000124)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .CE(ce),
    .D(sig00000022),
    .Q(sig00000123)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .CE(ce),
    .D(sig00000021),
    .Q(sig00000122)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .CE(ce),
    .D(sig00000020),
    .Q(sig00000121)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .CE(ce),
    .D(sig0000001f),
    .Q(sig00000120)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .CE(ce),
    .D(sig0000001e),
    .Q(sig0000011f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .CE(ce),
    .D(sig0000002f),
    .Q(sig00000130)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(ce),
    .D(sig0000002e),
    .Q(sig0000012f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .CE(ce),
    .D(sig0000002d),
    .Q(sig0000012e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .CE(ce),
    .D(sig0000002c),
    .Q(sig0000012d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .CE(ce),
    .D(sig0000002b),
    .Q(sig0000012c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(ce),
    .D(sig0000002a),
    .Q(sig0000012b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(ce),
    .D(sig00000029),
    .Q(sig0000012a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(ce),
    .D(sig00000028),
    .Q(sig00000129)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .CE(ce),
    .D(sig00000027),
    .Q(sig00000128)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[17]),
    .R(sig00000002),
    .Q(sig00000142)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005a (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[16]),
    .S(sig00000002),
    .Q(sig00000141)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[15]),
    .R(sig00000002),
    .Q(sig00000140)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005c (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[14]),
    .S(sig00000002),
    .Q(sig0000013f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[13]),
    .R(sig00000002),
    .Q(sig0000013e)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005e (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[12]),
    .S(sig00000002),
    .Q(sig0000013d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[11]),
    .R(sig00000002),
    .Q(sig0000013c)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000060 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[10]),
    .S(sig00000002),
    .Q(sig0000013b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[9]),
    .R(sig00000002),
    .Q(sig0000013a)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000062 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[8]),
    .S(sig00000002),
    .Q(sig00000139)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[7]),
    .R(sig00000002),
    .Q(sig00000138)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000064 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[6]),
    .S(sig00000002),
    .Q(sig00000137)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[5]),
    .R(sig00000002),
    .Q(sig00000136)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000066 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[4]),
    .S(sig00000002),
    .Q(sig00000135)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[3]),
    .R(sig00000002),
    .Q(sig00000134)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000068 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[2]),
    .S(sig00000002),
    .Q(sig00000133)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[1]),
    .R(sig00000002),
    .Q(sig00000132)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000006a (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[0]),
    .S(sig00000002),
    .Q(sig00000131)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[7]),
    .Q(sig00000153)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[6]),
    .Q(sig00000154)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[5]),
    .Q(sig00000155)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[4]),
    .Q(sig00000156)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[3]),
    .Q(sig00000157)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000070 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[2]),
    .Q(sig00000158)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000071 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[1]),
    .Q(sig00000159)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000072 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[0]),
    .Q(sig0000015a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .CE(ce),
    .D(sig00000153),
    .R(sig00000002),
    .Q(sig0000014a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(clk),
    .CE(ce),
    .D(sig00000154),
    .R(sig00000002),
    .Q(sig00000149)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .CE(ce),
    .D(sig00000155),
    .R(sig00000002),
    .Q(sig00000148)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(clk),
    .CE(ce),
    .D(sig00000156),
    .R(sig00000002),
    .Q(sig00000147)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .CE(ce),
    .D(sig00000157),
    .R(sig00000002),
    .Q(sig00000146)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(clk),
    .CE(ce),
    .D(sig00000158),
    .R(sig00000002),
    .Q(sig00000145)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(clk),
    .CE(ce),
    .D(sig00000159),
    .R(sig00000002),
    .Q(sig00000144)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .CE(ce),
    .D(sig0000015a),
    .R(sig00000002),
    .Q(sig00000143)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[7]),
    .Q(sig0000015b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[6]),
    .Q(sig0000015c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[5]),
    .Q(sig0000015d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[4]),
    .Q(sig0000015e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[3]),
    .Q(sig0000015f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000080 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[2]),
    .Q(sig00000160)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000081 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[1]),
    .Q(sig00000161)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000082 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[0]),
    .Q(sig00000162)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000083 (
    .C(clk),
    .CE(ce),
    .D(sig0000015b),
    .R(sig00000002),
    .Q(sig00000152)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000084 (
    .C(clk),
    .CE(ce),
    .D(sig0000015c),
    .R(sig00000002),
    .Q(sig00000151)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(ce),
    .D(sig0000015d),
    .R(sig00000002),
    .Q(sig00000150)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000086 (
    .C(clk),
    .CE(ce),
    .D(sig0000015e),
    .R(sig00000002),
    .Q(sig0000014f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(ce),
    .D(sig0000015f),
    .R(sig00000002),
    .Q(sig0000014e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000088 (
    .C(clk),
    .CE(ce),
    .D(sig00000160),
    .R(sig00000002),
    .Q(sig0000014d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(ce),
    .D(sig00000161),
    .R(sig00000002),
    .Q(sig0000014c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000008a (
    .C(clk),
    .CE(ce),
    .D(sig00000162),
    .R(sig00000002),
    .Q(sig0000014b)
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 0 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 1 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ),
    .CARRYOUTREG ( 0 ))
  blk0000008b (
    .CECARRYIN(sig00000002),
    .RSTC(sig00000002),
    .RSTCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEOPMODE(ce),
    .CEC(sig00000002),
    .CARRYOUTF(NLW_blk0000008b_CARRYOUTF_UNCONNECTED),
    .RSTOPMODE(sig00000002),
    .RSTM(sig00000002),
    .CLK(clk),
    .RSTB(sig00000002),
    .CEM(ce),
    .CEB(ce),
    .CARRYIN(sig00000002),
    .CEP(ce),
    .CEA(ce),
    .CARRYOUT(NLW_blk0000008b_CARRYOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .RSTP(sig00000002),
    .B({sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5, sig000001a5
, sig000001a4, sig000001a3, sig000001a2, sig000001a1, sig000001a0, sig0000019f, sig0000019e}),
    .BCOUT({\NLW_blk0000008b_BCOUT<17>_UNCONNECTED , \NLW_blk0000008b_BCOUT<16>_UNCONNECTED , \NLW_blk0000008b_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<14>_UNCONNECTED , \NLW_blk0000008b_BCOUT<13>_UNCONNECTED , \NLW_blk0000008b_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<11>_UNCONNECTED , \NLW_blk0000008b_BCOUT<10>_UNCONNECTED , \NLW_blk0000008b_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<8>_UNCONNECTED , \NLW_blk0000008b_BCOUT<7>_UNCONNECTED , \NLW_blk0000008b_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<5>_UNCONNECTED , \NLW_blk0000008b_BCOUT<4>_UNCONNECTED , \NLW_blk0000008b_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<2>_UNCONNECTED , \NLW_blk0000008b_BCOUT<1>_UNCONNECTED , \NLW_blk0000008b_BCOUT<0>_UNCONNECTED }),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000001, sig00000001, sig00000001}),
    .P({\NLW_blk0000008b_P<47>_UNCONNECTED , \NLW_blk0000008b_P<46>_UNCONNECTED , \NLW_blk0000008b_P<45>_UNCONNECTED , 
\NLW_blk0000008b_P<44>_UNCONNECTED , \NLW_blk0000008b_P<43>_UNCONNECTED , \NLW_blk0000008b_P<42>_UNCONNECTED , \NLW_blk0000008b_P<41>_UNCONNECTED , 
\NLW_blk0000008b_P<40>_UNCONNECTED , \NLW_blk0000008b_P<39>_UNCONNECTED , \NLW_blk0000008b_P<38>_UNCONNECTED , \NLW_blk0000008b_P<37>_UNCONNECTED , 
\NLW_blk0000008b_P<36>_UNCONNECTED , \NLW_blk0000008b_P<35>_UNCONNECTED , \NLW_blk0000008b_P<34>_UNCONNECTED , \NLW_blk0000008b_P<33>_UNCONNECTED , 
\NLW_blk0000008b_P<32>_UNCONNECTED , \NLW_blk0000008b_P<31>_UNCONNECTED , \NLW_blk0000008b_P<30>_UNCONNECTED , \NLW_blk0000008b_P<29>_UNCONNECTED , 
\NLW_blk0000008b_P<28>_UNCONNECTED , \NLW_blk0000008b_P<27>_UNCONNECTED , \NLW_blk0000008b_P<26>_UNCONNECTED , \NLW_blk0000008b_P<25>_UNCONNECTED , 
\NLW_blk0000008b_P<24>_UNCONNECTED , \NLW_blk0000008b_P<23>_UNCONNECTED , \NLW_blk0000008b_P<22>_UNCONNECTED , \NLW_blk0000008b_P<21>_UNCONNECTED , 
\NLW_blk0000008b_P<20>_UNCONNECTED , \NLW_blk0000008b_P<19>_UNCONNECTED , \NLW_blk0000008b_P<18>_UNCONNECTED , \NLW_blk0000008b_P<17>_UNCONNECTED , 
\NLW_blk0000008b_P<16>_UNCONNECTED , \NLW_blk0000008b_P<15>_UNCONNECTED , \NLW_blk0000008b_P<14>_UNCONNECTED , \NLW_blk0000008b_P<13>_UNCONNECTED , 
\NLW_blk0000008b_P<12>_UNCONNECTED , \NLW_blk0000008b_P<11>_UNCONNECTED , \NLW_blk0000008b_P<10>_UNCONNECTED , \NLW_blk0000008b_P<9>_UNCONNECTED , 
\NLW_blk0000008b_P<8>_UNCONNECTED , \NLW_blk0000008b_P<7>_UNCONNECTED , \NLW_blk0000008b_P<6>_UNCONNECTED , \NLW_blk0000008b_P<5>_UNCONNECTED , 
\NLW_blk0000008b_P<4>_UNCONNECTED , \NLW_blk0000008b_P<3>_UNCONNECTED , \NLW_blk0000008b_P<2>_UNCONNECTED , \NLW_blk0000008b_P<1>_UNCONNECTED , 
\NLW_blk0000008b_P<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000001, sig00000002, sig00000001}),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({sig00000164, sig00000165, sig00000166, sig00000167, sig00000168, sig00000169, sig0000016a, sig0000016b, sig0000016c, sig0000016d, 
sig0000016e, sig0000016f, sig00000170, sig00000171, sig00000172, sig00000173, sig00000174, sig00000175, sig00000176, sig00000177, sig00000178, 
sig00000179, sig0000017a, sig0000017b, sig0000017c, sig0000017d, sig0000017e, sig0000017f, sig00000180, sig00000181, sig00000182, sig00000183, 
sig00000184, sig00000185, sig00000186, sig00000187, sig00000188, sig00000189, sig0000018a, sig0000018b, sig0000018c, sig0000018d, sig0000018e, 
sig0000018f, sig00000190, sig00000191, sig00000192, sig00000193}),
    .A({sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c3, sig000001c2
, sig000001c1, sig000001c0, sig000001bf, sig000001be, sig000001bd, sig000001bc, sig000001bb}),
    .M({\NLW_blk0000008b_M<35>_UNCONNECTED , \NLW_blk0000008b_M<34>_UNCONNECTED , \NLW_blk0000008b_M<33>_UNCONNECTED , 
\NLW_blk0000008b_M<32>_UNCONNECTED , \NLW_blk0000008b_M<31>_UNCONNECTED , \NLW_blk0000008b_M<30>_UNCONNECTED , \NLW_blk0000008b_M<29>_UNCONNECTED , 
\NLW_blk0000008b_M<28>_UNCONNECTED , \NLW_blk0000008b_M<27>_UNCONNECTED , \NLW_blk0000008b_M<26>_UNCONNECTED , \NLW_blk0000008b_M<25>_UNCONNECTED , 
\NLW_blk0000008b_M<24>_UNCONNECTED , \NLW_blk0000008b_M<23>_UNCONNECTED , \NLW_blk0000008b_M<22>_UNCONNECTED , \NLW_blk0000008b_M<21>_UNCONNECTED , 
\NLW_blk0000008b_M<20>_UNCONNECTED , \NLW_blk0000008b_M<19>_UNCONNECTED , \NLW_blk0000008b_M<18>_UNCONNECTED , \NLW_blk0000008b_M<17>_UNCONNECTED , 
\NLW_blk0000008b_M<16>_UNCONNECTED , \NLW_blk0000008b_M<15>_UNCONNECTED , \NLW_blk0000008b_M<14>_UNCONNECTED , \NLW_blk0000008b_M<13>_UNCONNECTED , 
\NLW_blk0000008b_M<12>_UNCONNECTED , \NLW_blk0000008b_M<11>_UNCONNECTED , \NLW_blk0000008b_M<10>_UNCONNECTED , \NLW_blk0000008b_M<9>_UNCONNECTED , 
\NLW_blk0000008b_M<8>_UNCONNECTED , \NLW_blk0000008b_M<7>_UNCONNECTED , \NLW_blk0000008b_M<6>_UNCONNECTED , \NLW_blk0000008b_M<5>_UNCONNECTED , 
\NLW_blk0000008b_M<4>_UNCONNECTED , \NLW_blk0000008b_M<3>_UNCONNECTED , \NLW_blk0000008b_M<2>_UNCONNECTED , \NLW_blk0000008b_M<1>_UNCONNECTED , 
\NLW_blk0000008b_M<0>_UNCONNECTED })
  );
  DSP48A1 #(
    .A0REG ( 1 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ),
    .CARRYOUTREG ( 0 ))
  blk0000008c (
    .CECARRYIN(sig00000002),
    .RSTC(sig00000002),
    .RSTCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEOPMODE(ce),
    .CEC(sig00000002),
    .CARRYOUTF(NLW_blk0000008c_CARRYOUTF_UNCONNECTED),
    .RSTOPMODE(sig00000002),
    .RSTM(sig00000002),
    .CLK(clk),
    .RSTB(sig00000002),
    .CEM(ce),
    .CEB(ce),
    .CARRYIN(sig00000002),
    .CEP(ce),
    .CEA(ce),
    .CARRYOUT(NLW_blk0000008c_CARRYOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .RSTP(sig00000002),
    .B({sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d, sig0000019d
, sig0000019c, sig0000019b, sig0000019a, sig00000199, sig00000198, sig00000197, sig00000196}),
    .BCOUT({\NLW_blk0000008c_BCOUT<17>_UNCONNECTED , \NLW_blk0000008c_BCOUT<16>_UNCONNECTED , \NLW_blk0000008c_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<14>_UNCONNECTED , \NLW_blk0000008c_BCOUT<13>_UNCONNECTED , \NLW_blk0000008c_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<11>_UNCONNECTED , \NLW_blk0000008c_BCOUT<10>_UNCONNECTED , \NLW_blk0000008c_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<8>_UNCONNECTED , \NLW_blk0000008c_BCOUT<7>_UNCONNECTED , \NLW_blk0000008c_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<5>_UNCONNECTED , \NLW_blk0000008c_BCOUT<4>_UNCONNECTED , \NLW_blk0000008c_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<2>_UNCONNECTED , \NLW_blk0000008c_BCOUT<1>_UNCONNECTED , \NLW_blk0000008c_BCOUT<0>_UNCONNECTED }),
    .PCIN({sig00000164, sig00000165, sig00000166, sig00000167, sig00000168, sig00000169, sig0000016a, sig0000016b, sig0000016c, sig0000016d, 
sig0000016e, sig0000016f, sig00000170, sig00000171, sig00000172, sig00000173, sig00000174, sig00000175, sig00000176, sig00000177, sig00000178, 
sig00000179, sig0000017a, sig0000017b, sig0000017c, sig0000017d, sig0000017e, sig0000017f, sig00000180, sig00000181, sig00000182, sig00000183, 
sig00000184, sig00000185, sig00000186, sig00000187, sig00000188, sig00000189, sig0000018a, sig0000018b, sig0000018c, sig0000018d, sig0000018e, 
sig0000018f, sig00000190, sig00000191, sig00000192, sig00000193}),
    .C({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .P({\NLW_blk0000008c_P<47>_UNCONNECTED , \NLW_blk0000008c_P<46>_UNCONNECTED , \NLW_blk0000008c_P<45>_UNCONNECTED , 
\NLW_blk0000008c_P<44>_UNCONNECTED , \NLW_blk0000008c_P<43>_UNCONNECTED , \NLW_blk0000008c_P<42>_UNCONNECTED , \NLW_blk0000008c_P<41>_UNCONNECTED , 
\NLW_blk0000008c_P<40>_UNCONNECTED , \NLW_blk0000008c_P<39>_UNCONNECTED , \NLW_blk0000008c_P<38>_UNCONNECTED , \NLW_blk0000008c_P<37>_UNCONNECTED , 
\NLW_blk0000008c_P<36>_UNCONNECTED , \NLW_blk0000008c_P<35>_UNCONNECTED , \NLW_blk0000008c_P<34>_UNCONNECTED , \NLW_blk0000008c_P<33>_UNCONNECTED , 
\NLW_blk0000008c_P<32>_UNCONNECTED , \NLW_blk0000008c_P<31>_UNCONNECTED , \NLW_blk0000008c_P<30>_UNCONNECTED , \NLW_blk0000008c_P<29>_UNCONNECTED , 
\NLW_blk0000008c_P<28>_UNCONNECTED , \NLW_blk0000008c_P<27>_UNCONNECTED , \NLW_blk0000008c_P<26>_UNCONNECTED , \NLW_blk0000008c_P<25>_UNCONNECTED , 
\NLW_blk0000008c_P<24>_UNCONNECTED , \NLW_blk0000008c_P<23>_UNCONNECTED , \NLW_blk0000008c_P<22>_UNCONNECTED , \NLW_blk0000008c_P<21>_UNCONNECTED , 
\NLW_blk0000008c_P<20>_UNCONNECTED , \NLW_blk0000008c_P<19>_UNCONNECTED , \NLW_blk0000008c_P<18>_UNCONNECTED , \NLW_blk0000008c_P<17>_UNCONNECTED , 
\NLW_blk0000008c_P<16>_UNCONNECTED , sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab, sig000001aa, 
sig000001a9, sig000001a8, sig000001a7, sig000001a6, \NLW_blk0000008c_P<3>_UNCONNECTED , \NLW_blk0000008c_P<2>_UNCONNECTED , 
\NLW_blk0000008c_P<1>_UNCONNECTED , \NLW_blk0000008c_P<0>_UNCONNECTED }),
    .OPMODE({sig00000163, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000001}),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({\NLW_blk0000008c_PCOUT<47>_UNCONNECTED , \NLW_blk0000008c_PCOUT<46>_UNCONNECTED , \NLW_blk0000008c_PCOUT<45>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<44>_UNCONNECTED , \NLW_blk0000008c_PCOUT<43>_UNCONNECTED , \NLW_blk0000008c_PCOUT<42>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<41>_UNCONNECTED , \NLW_blk0000008c_PCOUT<40>_UNCONNECTED , \NLW_blk0000008c_PCOUT<39>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<38>_UNCONNECTED , \NLW_blk0000008c_PCOUT<37>_UNCONNECTED , \NLW_blk0000008c_PCOUT<36>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<35>_UNCONNECTED , \NLW_blk0000008c_PCOUT<34>_UNCONNECTED , \NLW_blk0000008c_PCOUT<33>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<32>_UNCONNECTED , \NLW_blk0000008c_PCOUT<31>_UNCONNECTED , \NLW_blk0000008c_PCOUT<30>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<29>_UNCONNECTED , \NLW_blk0000008c_PCOUT<28>_UNCONNECTED , \NLW_blk0000008c_PCOUT<27>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<26>_UNCONNECTED , \NLW_blk0000008c_PCOUT<25>_UNCONNECTED , \NLW_blk0000008c_PCOUT<24>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<23>_UNCONNECTED , \NLW_blk0000008c_PCOUT<22>_UNCONNECTED , \NLW_blk0000008c_PCOUT<21>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<20>_UNCONNECTED , \NLW_blk0000008c_PCOUT<19>_UNCONNECTED , \NLW_blk0000008c_PCOUT<18>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<17>_UNCONNECTED , \NLW_blk0000008c_PCOUT<16>_UNCONNECTED , \NLW_blk0000008c_PCOUT<15>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<14>_UNCONNECTED , \NLW_blk0000008c_PCOUT<13>_UNCONNECTED , \NLW_blk0000008c_PCOUT<12>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<11>_UNCONNECTED , \NLW_blk0000008c_PCOUT<10>_UNCONNECTED , \NLW_blk0000008c_PCOUT<9>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<8>_UNCONNECTED , \NLW_blk0000008c_PCOUT<7>_UNCONNECTED , \NLW_blk0000008c_PCOUT<6>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<5>_UNCONNECTED , \NLW_blk0000008c_PCOUT<4>_UNCONNECTED , \NLW_blk0000008c_PCOUT<3>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<2>_UNCONNECTED , \NLW_blk0000008c_PCOUT<1>_UNCONNECTED , \NLW_blk0000008c_PCOUT<0>_UNCONNECTED }),
    .A({sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001ba, sig000001b9
, sig000001b8, sig000001b7, sig000001b6, sig000001b5, sig000001b4, sig000001b3, sig000001b2}),
    .M({\NLW_blk0000008c_M<35>_UNCONNECTED , \NLW_blk0000008c_M<34>_UNCONNECTED , \NLW_blk0000008c_M<33>_UNCONNECTED , 
\NLW_blk0000008c_M<32>_UNCONNECTED , \NLW_blk0000008c_M<31>_UNCONNECTED , \NLW_blk0000008c_M<30>_UNCONNECTED , \NLW_blk0000008c_M<29>_UNCONNECTED , 
\NLW_blk0000008c_M<28>_UNCONNECTED , \NLW_blk0000008c_M<27>_UNCONNECTED , \NLW_blk0000008c_M<26>_UNCONNECTED , \NLW_blk0000008c_M<25>_UNCONNECTED , 
\NLW_blk0000008c_M<24>_UNCONNECTED , \NLW_blk0000008c_M<23>_UNCONNECTED , \NLW_blk0000008c_M<22>_UNCONNECTED , \NLW_blk0000008c_M<21>_UNCONNECTED , 
\NLW_blk0000008c_M<20>_UNCONNECTED , \NLW_blk0000008c_M<19>_UNCONNECTED , \NLW_blk0000008c_M<18>_UNCONNECTED , \NLW_blk0000008c_M<17>_UNCONNECTED , 
\NLW_blk0000008c_M<16>_UNCONNECTED , \NLW_blk0000008c_M<15>_UNCONNECTED , \NLW_blk0000008c_M<14>_UNCONNECTED , \NLW_blk0000008c_M<13>_UNCONNECTED , 
\NLW_blk0000008c_M<12>_UNCONNECTED , \NLW_blk0000008c_M<11>_UNCONNECTED , \NLW_blk0000008c_M<10>_UNCONNECTED , \NLW_blk0000008c_M<9>_UNCONNECTED , 
\NLW_blk0000008c_M<8>_UNCONNECTED , \NLW_blk0000008c_M<7>_UNCONNECTED , \NLW_blk0000008c_M<6>_UNCONNECTED , \NLW_blk0000008c_M<5>_UNCONNECTED , 
\NLW_blk0000008c_M<4>_UNCONNECTED , \NLW_blk0000008c_M<3>_UNCONNECTED , \NLW_blk0000008c_M<2>_UNCONNECTED , \NLW_blk0000008c_M<1>_UNCONNECTED , 
\NLW_blk0000008c_M<0>_UNCONNECTED })
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(ce),
    .D(sig000001d3),
    .Q(sig0000019d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(clk),
    .CE(ce),
    .D(sig000001d2),
    .Q(sig0000019c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(clk),
    .CE(ce),
    .D(sig000001d1),
    .Q(sig0000019b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(clk),
    .CE(ce),
    .D(sig000001d0),
    .Q(sig0000019a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000091 (
    .C(clk),
    .CE(ce),
    .D(sig000001cf),
    .Q(sig00000199)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000092 (
    .C(clk),
    .CE(ce),
    .D(sig000001ce),
    .Q(sig00000198)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(clk),
    .CE(ce),
    .D(sig000001cd),
    .Q(sig00000197)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(clk),
    .CE(ce),
    .D(sig000001cc),
    .Q(sig00000196)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(clk),
    .CE(ce),
    .D(sig000001cb),
    .Q(sig000001a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(clk),
    .CE(ce),
    .D(sig000001ca),
    .Q(sig000001a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(clk),
    .CE(ce),
    .D(sig000001c9),
    .Q(sig000001a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(clk),
    .CE(ce),
    .D(sig000001c8),
    .Q(sig000001a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(clk),
    .CE(ce),
    .D(sig000001c7),
    .Q(sig000001a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(clk),
    .CE(ce),
    .D(sig000001c6),
    .Q(sig000001a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(clk),
    .CE(ce),
    .D(sig000001c5),
    .Q(sig0000019f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009c (
    .C(clk),
    .CE(ce),
    .D(sig000001c4),
    .Q(sig0000019e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009d (
    .C(clk),
    .CE(ce),
    .D(sig00000194),
    .Q(sig00000195)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009e (
    .C(clk),
    .CE(ce),
    .D(sig00000014),
    .Q(sig000001ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009f (
    .C(clk),
    .CE(ce),
    .D(sig00000013),
    .Q(sig000001b9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a0 (
    .C(clk),
    .CE(ce),
    .D(sig00000012),
    .Q(sig000001b8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a1 (
    .C(clk),
    .CE(ce),
    .D(sig00000011),
    .Q(sig000001b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a2 (
    .C(clk),
    .CE(ce),
    .D(sig00000010),
    .Q(sig000001b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a3 (
    .C(clk),
    .CE(ce),
    .D(sig0000000f),
    .Q(sig000001b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a4 (
    .C(clk),
    .CE(ce),
    .D(sig0000000e),
    .Q(sig000001b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a5 (
    .C(clk),
    .CE(ce),
    .D(sig0000000d),
    .Q(sig000001b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a6 (
    .C(clk),
    .CE(ce),
    .D(sig0000000c),
    .Q(sig000001b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a7 (
    .C(clk),
    .CE(ce),
    .D(sig0000001d),
    .Q(sig000001c3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a8 (
    .C(clk),
    .CE(ce),
    .D(sig0000001c),
    .Q(sig000001c2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(clk),
    .CE(ce),
    .D(sig0000001b),
    .Q(sig000001c1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .CE(ce),
    .D(sig0000001a),
    .Q(sig000001c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .CE(ce),
    .D(sig00000019),
    .Q(sig000001bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .CE(ce),
    .D(sig00000018),
    .Q(sig000001be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .CE(ce),
    .D(sig00000017),
    .Q(sig000001bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .CE(ce),
    .D(sig00000016),
    .Q(sig000001bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .CE(ce),
    .D(sig00000015),
    .Q(sig000001bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001e1),
    .Q(sig0000011e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001e0),
    .Q(sig0000011d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001df),
    .Q(sig0000011c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001de),
    .Q(sig0000011b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001dd),
    .Q(sig0000011a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001dc),
    .Q(sig00000119)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b6 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001db),
    .Q(sig00000118)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b7 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001da),
    .Q(sig00000117)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b8 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001d9),
    .Q(sig00000116)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b9 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001d8),
    .Q(sig00000115)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ba (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001d7),
    .Q(sig00000114)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bb (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001d6),
    .Q(sig00000113)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(clk),
    .CE(ce),
    .D(sig000001b1),
    .Q(sig000001e1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(clk),
    .CE(ce),
    .D(sig000001b0),
    .Q(sig000001e0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(clk),
    .CE(ce),
    .D(sig000001af),
    .Q(sig000001df)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(clk),
    .CE(ce),
    .D(sig000001ae),
    .Q(sig000001de)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(clk),
    .CE(ce),
    .D(sig000001ad),
    .Q(sig000001dd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(clk),
    .CE(ce),
    .D(sig000001ac),
    .Q(sig000001dc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(clk),
    .CE(ce),
    .D(sig000001ab),
    .Q(sig000001db)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c3 (
    .C(clk),
    .CE(ce),
    .D(sig000001aa),
    .Q(sig000001da)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c4 (
    .C(clk),
    .CE(ce),
    .D(sig000001a9),
    .Q(sig000001d9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c5 (
    .C(clk),
    .CE(ce),
    .D(sig000001a8),
    .Q(sig000001d8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c6 (
    .C(clk),
    .CE(ce),
    .D(sig000001a7),
    .Q(sig000001d7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c7 (
    .C(clk),
    .CE(ce),
    .D(sig000001a6),
    .Q(sig000001d6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c8 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001b1),
    .Q(sig00000112)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c9 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001b0),
    .Q(sig00000111)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ca (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001af),
    .Q(sig00000110)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cb (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001ae),
    .Q(sig0000010f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cc (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001ad),
    .Q(sig0000010e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cd (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001ac),
    .Q(sig0000010d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ce (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001ab),
    .Q(sig0000010c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cf (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001aa),
    .Q(sig0000010b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d0 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001a9),
    .Q(sig0000010a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d1 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001a8),
    .Q(sig00000109)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d2 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001a7),
    .Q(sig00000108)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d3 (
    .C(clk),
    .CE(sig000001d4),
    .D(sig000001a6),
    .Q(sig00000107)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d4 (
    .I0(sig00000096),
    .I1(sig0000014a),
    .I2(sig00000005),
    .O(sig000000fe)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d5 (
    .I0(sig00000095),
    .I1(sig00000149),
    .I2(sig00000005),
    .O(sig000000fd)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d6 (
    .I0(sig00000094),
    .I1(sig00000148),
    .I2(sig00000005),
    .O(sig000000fc)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d7 (
    .I0(sig00000093),
    .I1(sig00000147),
    .I2(sig00000005),
    .O(sig000000fb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d8 (
    .I0(sig00000092),
    .I1(sig00000146),
    .I2(sig00000005),
    .O(sig000000fa)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d9 (
    .I0(sig00000091),
    .I1(sig00000145),
    .I2(sig00000005),
    .O(sig000000f9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000da (
    .I0(sig00000090),
    .I1(sig00000144),
    .I2(sig00000005),
    .O(sig000000f8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000db (
    .I0(sig0000008f),
    .I1(sig00000143),
    .I2(sig00000005),
    .O(sig000000f7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000dc (
    .I0(sig0000009e),
    .I1(sig00000152),
    .I2(sig00000005),
    .O(sig00000106)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000dd (
    .I0(sig0000009d),
    .I1(sig00000151),
    .I2(sig00000005),
    .O(sig00000105)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000de (
    .I0(sig0000009c),
    .I1(sig00000150),
    .I2(sig00000005),
    .O(sig00000104)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000df (
    .I0(sig0000009b),
    .I1(sig0000014f),
    .I2(sig00000005),
    .O(sig00000103)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e0 (
    .I0(sig0000009a),
    .I1(sig0000014e),
    .I2(sig00000005),
    .O(sig00000102)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e1 (
    .I0(sig00000099),
    .I1(sig0000014d),
    .I2(sig00000005),
    .O(sig00000101)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e2 (
    .I0(sig00000098),
    .I1(sig0000014c),
    .I2(sig00000005),
    .O(sig00000100)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e3 (
    .I0(sig00000097),
    .I1(sig0000014b),
    .I2(sig00000005),
    .O(sig000000ff)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f7 (
    .I0(sig00000002),
    .I1(sig000000ee),
    .I2(sig00000007),
    .O(sig000001e2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f8 (
    .I0(sig00000002),
    .I1(sig000000ed),
    .I2(sig00000007),
    .O(sig000001e3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f9 (
    .I0(sig00000002),
    .I1(sig000000ec),
    .I2(sig00000007),
    .O(sig000001e4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fa (
    .I0(sig00000002),
    .I1(sig000000eb),
    .I2(sig00000007),
    .O(sig000001e5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fb (
    .I0(sig00000002),
    .I1(sig000000ea),
    .I2(sig00000007),
    .O(sig000001e6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fc (
    .I0(sig00000002),
    .I1(sig000000e9),
    .I2(sig00000007),
    .O(sig000001e7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fd (
    .I0(sig00000002),
    .I1(sig000000e8),
    .I2(sig00000007),
    .O(sig000001e8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fe (
    .I0(sig00000002),
    .I1(sig000000e7),
    .I2(sig00000007),
    .O(sig000001e9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000000ff (
    .C(clk),
    .CE(ce),
    .D(sig000001e2),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000100 (
    .C(clk),
    .CE(ce),
    .D(sig000001e3),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000101 (
    .C(clk),
    .CE(ce),
    .D(sig000001e4),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000102 (
    .C(clk),
    .CE(ce),
    .D(sig000001e5),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000103 (
    .C(clk),
    .CE(ce),
    .D(sig000001e6),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000104 (
    .C(clk),
    .CE(ce),
    .D(sig000001e7),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000105 (
    .C(clk),
    .CE(ce),
    .D(sig000001e8),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000106 (
    .C(clk),
    .CE(ce),
    .D(sig000001e9),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000107 (
    .I0(sig00000002),
    .I1(sig000000f6),
    .I2(sig00000007),
    .O(sig000001ea)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000108 (
    .I0(sig00000002),
    .I1(sig000000f5),
    .I2(sig00000007),
    .O(sig000001eb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000109 (
    .I0(sig00000002),
    .I1(sig000000f4),
    .I2(sig00000007),
    .O(sig000001ec)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010a (
    .I0(sig00000002),
    .I1(sig000000f3),
    .I2(sig00000007),
    .O(sig000001ed)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010b (
    .I0(sig00000002),
    .I1(sig000000f2),
    .I2(sig00000007),
    .O(sig000001ee)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010c (
    .I0(sig00000002),
    .I1(sig000000f1),
    .I2(sig00000007),
    .O(sig000001ef)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010d (
    .I0(sig00000002),
    .I1(sig000000f0),
    .I2(sig00000007),
    .O(sig000001f0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010e (
    .I0(sig00000002),
    .I1(sig000000ef),
    .I2(sig00000007),
    .O(sig000001f1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000010f (
    .C(clk),
    .CE(ce),
    .D(sig000001ea),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000110 (
    .C(clk),
    .CE(ce),
    .D(sig000001eb),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000111 (
    .C(clk),
    .CE(ce),
    .D(sig000001ec),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000112 (
    .C(clk),
    .CE(ce),
    .D(sig000001ed),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000113 (
    .C(clk),
    .CE(ce),
    .D(sig000001ee),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000114 (
    .C(clk),
    .CE(ce),
    .D(sig000001ef),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(ce),
    .D(sig000001f0),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(ce),
    .D(sig000001f1),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000054),
    .Q(sig000001f2)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000053),
    .Q(sig000001f3)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000052),
    .Q(sig000001f4)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000120 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000051),
    .Q(sig000001f5)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000121 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000050),
    .Q(sig000001f6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000122 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004f),
    .Q(sig000001f7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000123 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004e),
    .Q(sig000001f8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000124 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004d),
    .Q(sig000001f9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(clk),
    .CE(ce),
    .D(sig000001f2),
    .R(sig00000002),
    .Q(sig000000dd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(clk),
    .CE(ce),
    .D(sig000001f3),
    .R(sig00000002),
    .Q(sig000000dc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(clk),
    .CE(ce),
    .D(sig000001f4),
    .R(sig00000002),
    .Q(sig000000db)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(clk),
    .CE(ce),
    .D(sig000001f5),
    .R(sig00000002),
    .Q(sig000000da)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .CE(ce),
    .D(sig000001f6),
    .R(sig00000002),
    .Q(sig000000d9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .CE(ce),
    .D(sig000001f7),
    .R(sig00000002),
    .Q(sig000000d8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .CE(ce),
    .D(sig000001f8),
    .R(sig00000002),
    .Q(sig000000d7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .CE(ce),
    .D(sig000001f9),
    .R(sig00000002),
    .Q(sig000000d6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005c),
    .Q(sig000001fa)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005b),
    .Q(sig000001fb)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005a),
    .Q(sig000001fc)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000130 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000059),
    .Q(sig000001fd)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000131 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000058),
    .Q(sig000001fe)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000132 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000057),
    .Q(sig000001ff)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000133 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000056),
    .Q(sig00000200)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000134 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000055),
    .Q(sig00000201)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .CE(ce),
    .D(sig000001fa),
    .R(sig00000002),
    .Q(sig000000e5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .CE(ce),
    .D(sig000001fb),
    .R(sig00000002),
    .Q(sig000000e4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .CE(ce),
    .D(sig000001fc),
    .R(sig00000002),
    .Q(sig000000e3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .CE(ce),
    .D(sig000001fd),
    .R(sig00000002),
    .Q(sig000000e2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .CE(ce),
    .D(sig000001fe),
    .R(sig00000002),
    .Q(sig000000e1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .CE(ce),
    .D(sig000001ff),
    .R(sig00000002),
    .Q(sig000000e0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .CE(ce),
    .D(sig00000200),
    .R(sig00000002),
    .Q(sig000000df)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .CE(ce),
    .D(sig00000201),
    .R(sig00000002),
    .Q(sig000000de)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fb (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig000000c8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000202)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fc (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig000000c8),
    .I3(sig000000c9),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000203)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fd (
    .I0(sig00000002),
    .I1(sig000000c8),
    .I2(sig000000c9),
    .I3(sig000000ca),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000204)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fe (
    .I0(sig000000c8),
    .I1(sig000000c9),
    .I2(sig000000ca),
    .I3(sig000000cb),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000205)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001ff (
    .I0(sig000000c9),
    .I1(sig000000ca),
    .I2(sig000000cb),
    .I3(sig000000cc),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000206)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000200 (
    .I0(sig000000ca),
    .I1(sig000000cb),
    .I2(sig000000cc),
    .I3(sig000000cd),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000207)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000201 (
    .I0(sig000000cb),
    .I1(sig000000cc),
    .I2(sig000000cd),
    .I3(sig000000ce),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000208)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000202 (
    .I0(sig000000cc),
    .I1(sig000000cd),
    .I2(sig000000ce),
    .I3(sig000000cf),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000209)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000203 (
    .I0(sig000000cd),
    .I1(sig000000ce),
    .I2(sig000000cf),
    .I3(sig000000d0),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020a)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000204 (
    .I0(sig000000ce),
    .I1(sig000000cf),
    .I2(sig000000d0),
    .I3(sig000000d1),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020b)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000205 (
    .I0(sig000000cf),
    .I1(sig000000d0),
    .I2(sig000000d1),
    .I3(sig000000d2),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020c)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000206 (
    .I0(sig000000d0),
    .I1(sig000000d1),
    .I2(sig000000d2),
    .I3(sig000000d3),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020d)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000207 (
    .I0(sig000000d1),
    .I1(sig000000d2),
    .I2(sig000000d3),
    .I3(sig000000d4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020e)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000208 (
    .I0(sig000000d2),
    .I1(sig000000d3),
    .I2(sig000000d4),
    .I3(sig000000d4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000020f)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000209 (
    .I0(sig000000d3),
    .I1(sig000000d4),
    .I2(sig000000d4),
    .I3(sig000000d4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000210)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000020a (
    .I0(sig000000d4),
    .I1(sig000000d4),
    .I2(sig000000d4),
    .I3(sig000000d4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000211)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020b (
    .C(clk),
    .CE(ce),
    .D(sig00000202),
    .R(sig00000002),
    .Q(sig000000ad)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020c (
    .C(clk),
    .CE(ce),
    .D(sig00000203),
    .R(sig00000002),
    .Q(sig000000ae)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020d (
    .C(clk),
    .CE(ce),
    .D(sig00000204),
    .R(sig00000002),
    .Q(sig000000af)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020e (
    .C(clk),
    .CE(ce),
    .D(sig00000205),
    .R(sig00000002),
    .Q(sig000000b0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020f (
    .C(clk),
    .CE(ce),
    .D(sig00000206),
    .R(sig00000002),
    .Q(sig000000b1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000210 (
    .C(clk),
    .CE(ce),
    .D(sig00000207),
    .R(sig00000002),
    .Q(sig000000b2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000211 (
    .C(clk),
    .CE(ce),
    .D(sig00000208),
    .R(sig00000002),
    .Q(sig000000b3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000212 (
    .C(clk),
    .CE(ce),
    .D(sig00000209),
    .R(sig00000002),
    .Q(sig000000b4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000213 (
    .C(clk),
    .CE(ce),
    .D(sig0000020a),
    .R(sig00000002),
    .Q(sig000000b5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000214 (
    .C(clk),
    .CE(ce),
    .D(sig0000020b),
    .R(sig00000002),
    .Q(sig000000b6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000215 (
    .C(clk),
    .CE(ce),
    .D(sig0000020c),
    .R(sig00000002),
    .Q(sig000000b7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000216 (
    .C(clk),
    .CE(ce),
    .D(sig0000020d),
    .R(sig00000002),
    .Q(sig000000b8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000217 (
    .C(clk),
    .CE(ce),
    .D(sig0000020e),
    .R(sig00000002),
    .Q(sig000000b9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000218 (
    .C(clk),
    .CE(ce),
    .D(sig0000020f),
    .R(sig00000002),
    .Q(sig000000ba)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000219 (
    .C(clk),
    .CE(ce),
    .D(sig00000210),
    .R(sig00000002),
    .Q(NLW_blk00000219_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000021a (
    .C(clk),
    .CE(ce),
    .D(sig00000211),
    .R(sig00000002),
    .Q(NLW_blk0000021a_Q_UNCONNECTED)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021b (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig000000bb),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000212)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021c (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig000000bb),
    .I3(sig000000bc),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000213)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021d (
    .I0(sig00000002),
    .I1(sig000000bb),
    .I2(sig000000bc),
    .I3(sig000000bd),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000214)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021e (
    .I0(sig000000bb),
    .I1(sig000000bc),
    .I2(sig000000bd),
    .I3(sig000000be),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000215)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021f (
    .I0(sig000000bc),
    .I1(sig000000bd),
    .I2(sig000000be),
    .I3(sig000000bf),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000216)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000220 (
    .I0(sig000000bd),
    .I1(sig000000be),
    .I2(sig000000bf),
    .I3(sig000000c0),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000217)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000221 (
    .I0(sig000000be),
    .I1(sig000000bf),
    .I2(sig000000c0),
    .I3(sig000000c1),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000218)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000222 (
    .I0(sig000000bf),
    .I1(sig000000c0),
    .I2(sig000000c1),
    .I3(sig000000c2),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000219)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000223 (
    .I0(sig000000c0),
    .I1(sig000000c1),
    .I2(sig000000c2),
    .I3(sig000000c3),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021a)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000224 (
    .I0(sig000000c1),
    .I1(sig000000c2),
    .I2(sig000000c3),
    .I3(sig000000c4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021b)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000225 (
    .I0(sig000000c2),
    .I1(sig000000c3),
    .I2(sig000000c4),
    .I3(sig000000c5),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021c)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000226 (
    .I0(sig000000c3),
    .I1(sig000000c4),
    .I2(sig000000c5),
    .I3(sig000000c6),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021d)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000227 (
    .I0(sig000000c4),
    .I1(sig000000c5),
    .I2(sig000000c6),
    .I3(sig000000c7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021e)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000228 (
    .I0(sig000000c5),
    .I1(sig000000c6),
    .I2(sig000000c7),
    .I3(sig000000c7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig0000021f)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000229 (
    .I0(sig000000c6),
    .I1(sig000000c7),
    .I2(sig000000c7),
    .I3(sig000000c7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000220)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000022a (
    .I0(sig000000c7),
    .I1(sig000000c7),
    .I2(sig000000c7),
    .I3(sig000000c7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000221)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022b (
    .C(clk),
    .CE(ce),
    .D(sig00000212),
    .R(sig00000002),
    .Q(sig0000009f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022c (
    .C(clk),
    .CE(ce),
    .D(sig00000213),
    .R(sig00000002),
    .Q(sig000000a0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022d (
    .C(clk),
    .CE(ce),
    .D(sig00000214),
    .R(sig00000002),
    .Q(sig000000a1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022e (
    .C(clk),
    .CE(ce),
    .D(sig00000215),
    .R(sig00000002),
    .Q(sig000000a2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022f (
    .C(clk),
    .CE(ce),
    .D(sig00000216),
    .R(sig00000002),
    .Q(sig000000a3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000230 (
    .C(clk),
    .CE(ce),
    .D(sig00000217),
    .R(sig00000002),
    .Q(sig000000a4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000231 (
    .C(clk),
    .CE(ce),
    .D(sig00000218),
    .R(sig00000002),
    .Q(sig000000a5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000232 (
    .C(clk),
    .CE(ce),
    .D(sig00000219),
    .R(sig00000002),
    .Q(sig000000a6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000233 (
    .C(clk),
    .CE(ce),
    .D(sig0000021a),
    .R(sig00000002),
    .Q(sig000000a7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000234 (
    .C(clk),
    .CE(ce),
    .D(sig0000021b),
    .R(sig00000002),
    .Q(sig000000a8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000235 (
    .C(clk),
    .CE(ce),
    .D(sig0000021c),
    .R(sig00000002),
    .Q(sig000000a9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000236 (
    .C(clk),
    .CE(ce),
    .D(sig0000021d),
    .R(sig00000002),
    .Q(sig000000aa)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000237 (
    .C(clk),
    .CE(ce),
    .D(sig0000021e),
    .R(sig00000002),
    .Q(sig000000ab)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000238 (
    .C(clk),
    .CE(ce),
    .D(sig0000021f),
    .R(sig00000002),
    .Q(sig000000ac)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000239 (
    .C(clk),
    .CE(ce),
    .D(sig00000220),
    .R(sig00000002),
    .Q(NLW_blk00000239_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000023a (
    .C(clk),
    .CE(ce),
    .D(sig00000221),
    .R(sig00000002),
    .Q(NLW_blk0000023a_Q_UNCONNECTED)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000023b (
    .I0(sig000000ab),
    .I1(sig00000222),
    .I2(sig00000001),
    .I3(sig00000001),
    .I4(sig00000001),
    .I5(sig00000001),
    .O(sig00000223)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000023c (
    .I0(sig000000a5),
    .I1(sig000000a6),
    .I2(sig000000a7),
    .I3(sig000000a8),
    .I4(sig000000a9),
    .I5(sig000000aa),
    .O(sig00000224)
  );
  MUXCY   blk0000023d (
    .CI(sig00000226),
    .DI(sig00000002),
    .S(sig00000223),
    .O(sig00000225)
  );
  MUXCY   blk0000023e (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000224),
    .O(sig00000226)
  );
  XORCY   blk0000023f (
    .CI(sig00000225),
    .LI(sig00000002),
    .O(sig0000023d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000240 (
    .C(clk),
    .CE(ce),
    .D(sig0000022d),
    .Q(sig0000008f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000241 (
    .C(clk),
    .CE(ce),
    .D(sig0000022e),
    .Q(sig00000090)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000242 (
    .C(clk),
    .CE(ce),
    .D(sig0000022f),
    .Q(sig00000091)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000243 (
    .C(clk),
    .CE(ce),
    .D(sig00000230),
    .Q(sig00000092)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000244 (
    .C(clk),
    .CE(ce),
    .D(sig00000231),
    .Q(sig00000093)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000245 (
    .C(clk),
    .CE(ce),
    .D(sig00000232),
    .Q(sig00000094)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000246 (
    .C(clk),
    .CE(ce),
    .D(sig00000233),
    .Q(sig00000095)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000247 (
    .C(clk),
    .CE(ce),
    .D(sig00000234),
    .Q(sig00000096)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000248 (
    .C(clk),
    .CE(ce),
    .D(sig0000023d),
    .Q(sig0000022a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000249 (
    .C(clk),
    .CE(ce),
    .D(sig0000023e),
    .Q(sig0000022b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000024a (
    .C(clk),
    .CE(ce),
    .D(sig000000a4),
    .Q(sig00000228)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000024b (
    .C(clk),
    .CE(ce),
    .D(sig00000227),
    .Q(sig00000229)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000024c (
    .C(clk),
    .CE(ce),
    .D(sig000000a5),
    .Q(sig0000022c)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000024d (
    .I0(sig000000b9),
    .I1(sig0000023f),
    .I2(sig00000001),
    .I3(sig00000001),
    .I4(sig00000001),
    .I5(sig00000001),
    .O(sig00000240)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  blk0000024e (
    .I0(sig000000b3),
    .I1(sig000000b4),
    .I2(sig000000b5),
    .I3(sig000000b6),
    .I4(sig000000b7),
    .I5(sig000000b8),
    .O(sig00000241)
  );
  MUXCY   blk0000024f (
    .CI(sig00000243),
    .DI(sig00000002),
    .S(sig00000240),
    .O(sig00000242)
  );
  MUXCY   blk00000250 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000241),
    .O(sig00000243)
  );
  XORCY   blk00000251 (
    .CI(sig00000242),
    .LI(sig00000002),
    .O(sig0000025a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000252 (
    .C(clk),
    .CE(ce),
    .D(sig0000024a),
    .Q(sig00000097)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000253 (
    .C(clk),
    .CE(ce),
    .D(sig0000024b),
    .Q(sig00000098)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000254 (
    .C(clk),
    .CE(ce),
    .D(sig0000024c),
    .Q(sig00000099)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000255 (
    .C(clk),
    .CE(ce),
    .D(sig0000024d),
    .Q(sig0000009a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000256 (
    .C(clk),
    .CE(ce),
    .D(sig0000024e),
    .Q(sig0000009b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000257 (
    .C(clk),
    .CE(ce),
    .D(sig0000024f),
    .Q(sig0000009c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000258 (
    .C(clk),
    .CE(ce),
    .D(sig00000250),
    .Q(sig0000009d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000259 (
    .C(clk),
    .CE(ce),
    .D(sig00000251),
    .Q(sig0000009e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025a (
    .C(clk),
    .CE(ce),
    .D(sig0000025a),
    .Q(sig00000247)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025b (
    .C(clk),
    .CE(ce),
    .D(sig0000025b),
    .Q(sig00000248)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025c (
    .C(clk),
    .CE(ce),
    .D(sig000000b2),
    .Q(sig00000245)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025d (
    .C(clk),
    .CE(ce),
    .D(sig00000244),
    .Q(sig00000246)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000025e (
    .C(clk),
    .CE(ce),
    .D(sig000000b3),
    .Q(sig00000249)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000025f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000ba),
    .Q(sig0000025c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000260 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b9),
    .Q(sig0000025d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000261 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b8),
    .Q(sig0000025e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000262 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b7),
    .Q(sig0000025f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000263 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b6),
    .Q(sig00000260)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000264 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b5),
    .Q(sig00000261)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000265 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b4),
    .Q(sig00000262)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000266 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b3),
    .Q(sig00000263)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000267 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000b2),
    .Q(sig00000264)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000268 (
    .C(clk),
    .CE(ce),
    .D(sig0000025c),
    .R(sig00000002),
    .Q(sig00000259)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000269 (
    .C(clk),
    .CE(ce),
    .D(sig0000025d),
    .R(sig00000002),
    .Q(sig00000258)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026a (
    .C(clk),
    .CE(ce),
    .D(sig0000025e),
    .R(sig00000002),
    .Q(sig00000257)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026b (
    .C(clk),
    .CE(ce),
    .D(sig0000025f),
    .R(sig00000002),
    .Q(sig00000256)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026c (
    .C(clk),
    .CE(ce),
    .D(sig00000260),
    .R(sig00000002),
    .Q(sig00000255)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026d (
    .C(clk),
    .CE(ce),
    .D(sig00000261),
    .R(sig00000002),
    .Q(sig00000254)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026e (
    .C(clk),
    .CE(ce),
    .D(sig00000262),
    .R(sig00000002),
    .Q(sig00000253)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026f (
    .C(clk),
    .CE(ce),
    .D(sig00000263),
    .R(sig00000002),
    .Q(sig00000252)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000270 (
    .C(clk),
    .CE(ce),
    .D(sig00000264),
    .R(sig00000002),
    .Q(NLW_blk00000270_Q_UNCONNECTED)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000271 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000ac),
    .Q(sig00000265)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000272 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000ab),
    .Q(sig00000266)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000273 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000aa),
    .Q(sig00000267)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000274 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a9),
    .Q(sig00000268)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000275 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a8),
    .Q(sig00000269)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000276 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a7),
    .Q(sig0000026a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000277 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a6),
    .Q(sig0000026b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000278 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a5),
    .Q(sig0000026c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000279 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000000a4),
    .Q(sig0000026d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027a (
    .C(clk),
    .CE(ce),
    .D(sig00000265),
    .R(sig00000002),
    .Q(sig0000023c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027b (
    .C(clk),
    .CE(ce),
    .D(sig00000266),
    .R(sig00000002),
    .Q(sig0000023b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027c (
    .C(clk),
    .CE(ce),
    .D(sig00000267),
    .R(sig00000002),
    .Q(sig0000023a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027d (
    .C(clk),
    .CE(ce),
    .D(sig00000268),
    .R(sig00000002),
    .Q(sig00000239)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027e (
    .C(clk),
    .CE(ce),
    .D(sig00000269),
    .R(sig00000002),
    .Q(sig00000238)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000027f (
    .C(clk),
    .CE(ce),
    .D(sig0000026a),
    .R(sig00000002),
    .Q(sig00000237)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000280 (
    .C(clk),
    .CE(ce),
    .D(sig0000026b),
    .R(sig00000002),
    .Q(sig00000236)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000281 (
    .C(clk),
    .CE(ce),
    .D(sig0000026c),
    .R(sig00000002),
    .Q(sig00000235)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000282 (
    .C(clk),
    .CE(ce),
    .D(sig0000026d),
    .R(sig00000002),
    .Q(NLW_blk00000282_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b3 (
    .C(clk),
    .CE(ce),
    .D(sig0000026e),
    .R(sig00000002),
    .Q(sig00000015)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b4 (
    .C(clk),
    .CE(ce),
    .D(sig0000026f),
    .R(sig00000002),
    .Q(sig00000016)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b5 (
    .C(clk),
    .CE(ce),
    .D(sig00000270),
    .R(sig00000002),
    .Q(sig00000017)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b6 (
    .C(clk),
    .CE(ce),
    .D(sig00000271),
    .R(sig00000002),
    .Q(sig00000018)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b7 (
    .C(clk),
    .CE(ce),
    .D(sig00000272),
    .R(sig00000002),
    .Q(sig00000019)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b8 (
    .C(clk),
    .CE(ce),
    .D(sig00000273),
    .R(sig00000002),
    .Q(sig0000001a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b9 (
    .C(clk),
    .CE(ce),
    .D(sig00000274),
    .R(sig00000002),
    .Q(sig0000001b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ba (
    .C(clk),
    .CE(ce),
    .D(sig00000275),
    .R(sig00000002),
    .Q(sig0000001c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002bb (
    .C(clk),
    .CE(ce),
    .D(sig00000276),
    .R(sig00000002),
    .Q(sig0000001d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bc (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000032c),
    .Q(sig0000026e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bd (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000032d),
    .Q(sig0000026f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002be (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000032e),
    .Q(sig00000270)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002bf (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000032f),
    .Q(sig00000271)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002c0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000330),
    .Q(sig00000272)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002c1 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000331),
    .Q(sig00000273)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002c2 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000332),
    .Q(sig00000274)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002c3 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000333),
    .Q(sig00000275)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002c4 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000334),
    .Q(sig00000276)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c5 (
    .C(clk),
    .CE(ce),
    .D(sig00000277),
    .R(sig00000002),
    .Q(sig0000000c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c6 (
    .C(clk),
    .CE(ce),
    .D(sig00000278),
    .R(sig00000002),
    .Q(sig0000000d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c7 (
    .C(clk),
    .CE(ce),
    .D(sig00000279),
    .R(sig00000002),
    .Q(sig0000000e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c8 (
    .C(clk),
    .CE(ce),
    .D(sig0000027a),
    .R(sig00000002),
    .Q(sig0000000f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002c9 (
    .C(clk),
    .CE(ce),
    .D(sig0000027b),
    .R(sig00000002),
    .Q(sig00000010)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ca (
    .C(clk),
    .CE(ce),
    .D(sig0000027c),
    .R(sig00000002),
    .Q(sig00000011)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cb (
    .C(clk),
    .CE(ce),
    .D(sig0000027d),
    .R(sig00000002),
    .Q(sig00000012)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cc (
    .C(clk),
    .CE(ce),
    .D(sig0000027e),
    .R(sig00000002),
    .Q(sig00000013)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002cd (
    .C(clk),
    .CE(ce),
    .D(sig0000027f),
    .R(sig00000002),
    .Q(sig00000014)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002ce (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000335),
    .Q(sig00000277)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002cf (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000336),
    .Q(sig00000278)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000337),
    .Q(sig00000279)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d1 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000338),
    .Q(sig0000027a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d2 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000339),
    .Q(sig0000027b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d3 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000033a),
    .Q(sig0000027c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d4 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000033b),
    .Q(sig0000027d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d5 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000033c),
    .Q(sig0000027e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000002d6 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000033d),
    .Q(sig0000027f)
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  blk000002d7 (
    .I0(sig00000002),
    .O(sig000002dc)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000002d8 (
    .I0(sig0000030b),
    .I1(sig000002ba),
    .O(sig000002dd)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002d9 (
    .I0(sig00000348),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b2),
    .O(sig000002e0)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002da (
    .I0(sig00000347),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b3),
    .O(sig000002e1)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002db (
    .I0(sig00000346),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b4),
    .O(sig000002e2)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002dc (
    .I0(sig00000345),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b5),
    .O(sig000002e3)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002dd (
    .I0(sig00000344),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b6),
    .O(sig000002e4)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002de (
    .I0(sig00000343),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b7),
    .O(sig000002e5)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002df (
    .I0(sig00000342),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b8),
    .O(sig000002e6)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk000002e0 (
    .I0(sig00000341),
    .I1(sig0000031f),
    .I2(sig000002d2),
    .I3(sig000002b9),
    .O(sig000002e7)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  blk000002e1 (
    .I0(sig00000320),
    .I1(sig000002c7),
    .I2(sig000002c6),
    .O(sig000002e8)
  );
  MUXCY   blk000002e2 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000002d3),
    .O(sig000002ea)
  );
  MUXCY   blk000002e3 (
    .CI(sig000002ea),
    .DI(sig00000002),
    .S(sig000002d4),
    .O(sig000002eb)
  );
  MUXCY   blk000002e4 (
    .CI(sig000002eb),
    .DI(sig00000002),
    .S(sig000002d5),
    .O(sig000002ec)
  );
  MUXCY   blk000002e5 (
    .CI(sig000002ec),
    .DI(sig00000002),
    .S(sig000002d6),
    .O(sig000002ed)
  );
  MUXCY   blk000002e6 (
    .CI(sig000002ed),
    .DI(sig00000002),
    .S(sig000002d7),
    .O(sig000002ee)
  );
  MUXCY   blk000002e7 (
    .CI(sig000002ee),
    .DI(sig00000002),
    .S(sig000002d8),
    .O(sig000002ef)
  );
  MUXCY   blk000002e8 (
    .CI(sig000002ef),
    .DI(sig00000002),
    .S(sig000002d9),
    .O(sig000002f0)
  );
  MUXCY   blk000002e9 (
    .CI(sig000002f0),
    .DI(sig00000002),
    .S(sig000002da),
    .O(sig000002f1)
  );
  MUXCY   blk000002ea (
    .CI(sig000002f1),
    .DI(sig00000002),
    .S(sig000002db),
    .O(sig000002f2)
  );
  MUXCY   blk000002eb (
    .CI(sig000002f2),
    .DI(sig00000002),
    .S(sig000002dc),
    .O(sig000002f7)
  );
  MUXCY   blk000002ec (
    .CI(sig00000300),
    .DI(sig00000002),
    .S(sig000002df),
    .O(sig000002f9)
  );
  XORCY   blk000002ed (
    .CI(sig000002f7),
    .LI(sig00000002),
    .O(sig000002ff)
  );
  MUXCY   blk000002ee (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000002fa),
    .O(sig00000300)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000002ef (
    .C(clk),
    .CE(sig000002e9),
    .D(sig000002fb),
    .Q(sig000002a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000002f0 (
    .C(clk),
    .CE(sig000002e9),
    .D(sig000002fc),
    .Q(sig000002a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000002f1 (
    .C(clk),
    .CE(sig000002e9),
    .D(sig000002fd),
    .Q(sig000002a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000002f2 (
    .C(clk),
    .CE(sig000002e9),
    .D(sig000002fe),
    .Q(sig000002a6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f3 (
    .C(clk),
    .CE(ce),
    .D(sig000002de),
    .R(sig00000002),
    .Q(sig000002a7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f4 (
    .C(clk),
    .CE(ce),
    .D(sig00000280),
    .R(sig00000002),
    .Q(sig000002a8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f5 (
    .C(clk),
    .CE(ce),
    .D(sig00000281),
    .R(sig00000002),
    .Q(sig000002a9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f6 (
    .C(clk),
    .CE(ce),
    .D(sig00000282),
    .R(sig00000002),
    .Q(sig000002aa)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f7 (
    .C(clk),
    .CE(ce),
    .D(sig00000283),
    .R(sig00000002),
    .Q(sig000002ab)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f8 (
    .C(clk),
    .CE(ce),
    .D(sig00000284),
    .R(sig00000002),
    .Q(sig000002ac)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002f9 (
    .C(clk),
    .CE(ce),
    .D(sig00000285),
    .R(sig00000002),
    .Q(sig000002ad)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fa (
    .C(clk),
    .CE(ce),
    .D(sig00000286),
    .R(sig00000002),
    .Q(sig000002ae)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fb (
    .C(clk),
    .CE(ce),
    .D(sig00000287),
    .R(sig00000002),
    .Q(sig000002af)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fc (
    .C(clk),
    .CE(ce),
    .D(sig00000002),
    .R(sig00000002),
    .Q(sig000002b0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fd (
    .C(clk),
    .CE(ce),
    .D(sig00000301),
    .R(sig00000002),
    .Q(sig000002bd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002fe (
    .C(clk),
    .CE(ce),
    .D(sig00000302),
    .R(sig00000002),
    .Q(sig000002be)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002ff (
    .C(clk),
    .CE(ce),
    .D(sig00000303),
    .R(sig00000002),
    .Q(sig000002bf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000300 (
    .C(clk),
    .CE(ce),
    .D(sig00000304),
    .R(sig00000002),
    .Q(sig000002c0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000301 (
    .C(clk),
    .CE(ce),
    .D(sig00000305),
    .R(sig00000002),
    .Q(sig000002c1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000302 (
    .C(clk),
    .CE(ce),
    .D(sig00000306),
    .R(sig00000002),
    .Q(sig000002c2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000303 (
    .C(clk),
    .CE(ce),
    .D(sig00000307),
    .R(sig00000002),
    .Q(sig000002c3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000304 (
    .C(clk),
    .CE(ce),
    .D(sig00000308),
    .R(sig00000002),
    .Q(sig000002c4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000305 (
    .C(clk),
    .CE(ce),
    .D(sig00000309),
    .R(sig00000002),
    .Q(sig000002b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000306 (
    .C(clk),
    .CE(ce),
    .D(sig000002ff),
    .Q(sig0000031f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000307 (
    .C(clk),
    .CE(ce),
    .D(sig000002bd),
    .R(sig00000002),
    .Q(sig000002b2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000308 (
    .C(clk),
    .CE(ce),
    .D(sig000002be),
    .R(sig00000002),
    .Q(sig000002b3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000309 (
    .C(clk),
    .CE(ce),
    .D(sig000002bf),
    .R(sig00000002),
    .Q(sig000002b4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030a (
    .C(clk),
    .CE(ce),
    .D(sig000002c0),
    .R(sig00000002),
    .Q(sig000002b5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030b (
    .C(clk),
    .CE(ce),
    .D(sig000002c1),
    .R(sig00000002),
    .Q(sig000002b6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030c (
    .C(clk),
    .CE(ce),
    .D(sig000002c2),
    .R(sig00000002),
    .Q(sig000002b7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030d (
    .C(clk),
    .CE(ce),
    .D(sig000002c3),
    .R(sig00000002),
    .Q(sig000002b8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030e (
    .C(clk),
    .CE(ce),
    .D(sig000002c4),
    .R(sig00000002),
    .Q(sig000002b9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000030f (
    .C(clk),
    .CE(ce),
    .D(sig000002f9),
    .R(sig00000002),
    .Q(sig000002ba)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000310 (
    .C(clk),
    .CE(ce),
    .D(sig000002dd),
    .R(sig00000002),
    .Q(sig000002bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000311 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000291),
    .Q(sig0000033d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000312 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000292),
    .Q(sig0000033c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000313 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000293),
    .Q(sig0000033b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000314 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000294),
    .Q(sig0000033a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000315 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000295),
    .Q(sig00000339)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000316 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000296),
    .Q(sig00000338)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000317 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000297),
    .Q(sig00000337)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000318 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000298),
    .Q(sig00000336)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000319 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig00000299),
    .Q(sig00000335)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031a (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029a),
    .Q(sig00000334)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031b (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029b),
    .Q(sig00000333)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031c (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029c),
    .Q(sig00000332)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031d (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029d),
    .Q(sig00000331)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031e (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029e),
    .Q(sig00000330)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000031f (
    .C(clk),
    .CE(sig0000032a),
    .D(sig0000029f),
    .Q(sig0000032f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000320 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig000002a0),
    .Q(sig0000032e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000321 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig000002a1),
    .Q(sig0000032d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000322 (
    .C(clk),
    .CE(sig0000032a),
    .D(sig000002a2),
    .Q(sig0000032c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000323 (
    .C(clk),
    .CE(ce),
    .D(sig000002e0),
    .R(sig00000002),
    .Q(sig00000348)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000324 (
    .C(clk),
    .CE(ce),
    .D(sig000002e1),
    .R(sig00000002),
    .Q(sig00000347)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000325 (
    .C(clk),
    .CE(ce),
    .D(sig000002e2),
    .R(sig00000002),
    .Q(sig00000346)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000326 (
    .C(clk),
    .CE(ce),
    .D(sig000002e3),
    .R(sig00000002),
    .Q(sig00000345)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000327 (
    .C(clk),
    .CE(ce),
    .D(sig000002e4),
    .R(sig00000002),
    .Q(sig00000344)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000328 (
    .C(clk),
    .CE(ce),
    .D(sig000002e5),
    .R(sig00000002),
    .Q(sig00000343)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000329 (
    .C(clk),
    .CE(ce),
    .D(sig000002e6),
    .R(sig00000002),
    .Q(sig00000342)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032a (
    .C(clk),
    .CE(ce),
    .D(sig000002e7),
    .R(sig00000002),
    .Q(sig00000341)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032b (
    .C(clk),
    .CE(ce),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032c (
    .C(clk),
    .CE(ce),
    .D(sig000002d1),
    .R(sig00000002),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032d (
    .C(clk),
    .CE(ce),
    .D(sig000002cb),
    .R(sig00000002),
    .Q(sig000002d1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032e (
    .C(clk),
    .CE(ce),
    .D(sig000002ca),
    .R(sig00000002),
    .Q(sig000002cb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000032f (
    .C(clk),
    .CE(ce),
    .D(sig000002d2),
    .R(sig00000002),
    .Q(sig000002cf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000330 (
    .C(clk),
    .CE(ce),
    .D(sig00000288),
    .R(sig00000002),
    .Q(sig0000030d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000331 (
    .C(clk),
    .CE(ce),
    .D(sig00000289),
    .R(sig00000002),
    .Q(sig0000030e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000332 (
    .C(clk),
    .CE(ce),
    .D(sig0000028a),
    .R(sig00000002),
    .Q(sig0000030f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000333 (
    .C(clk),
    .CE(ce),
    .D(sig0000028b),
    .R(sig00000002),
    .Q(sig00000310)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000334 (
    .C(clk),
    .CE(ce),
    .D(sig0000028c),
    .R(sig00000002),
    .Q(sig00000311)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000335 (
    .C(clk),
    .CE(ce),
    .D(sig0000028d),
    .R(sig00000002),
    .Q(sig00000312)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000336 (
    .C(clk),
    .CE(ce),
    .D(sig0000028e),
    .R(sig00000002),
    .Q(sig00000313)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000337 (
    .C(clk),
    .CE(ce),
    .D(sig0000028f),
    .R(sig00000002),
    .Q(sig00000314)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000338 (
    .C(clk),
    .CE(ce),
    .D(sig00000290),
    .R(sig00000002),
    .Q(sig00000315)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000339 (
    .C(clk),
    .CE(ce),
    .D(sig000002e8),
    .R(sig00000002),
    .Q(sig000002ca)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033a (
    .C(clk),
    .CE(ce),
    .D(sig000002c7),
    .R(sig00000002),
    .Q(sig000002c8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033b (
    .C(clk),
    .CE(ce),
    .D(sig000002c6),
    .R(sig00000002),
    .Q(sig000002c7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033c (
    .C(clk),
    .CE(ce),
    .D(sig0000032b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033d (
    .C(clk),
    .CE(ce),
    .D(sig000002cd),
    .R(sig00000002),
    .Q(sig00000006)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033e (
    .C(clk),
    .CE(ce),
    .D(sig000002ce),
    .R(sig00000002),
    .Q(sig00000009)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033f (
    .C(clk),
    .CE(ce),
    .D(sig00000340),
    .R(sig00000002),
    .Q(sig0000032b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000340 (
    .C(clk),
    .CE(ce),
    .D(sig000002c9),
    .R(sig00000002),
    .Q(sig000002cd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000341 (
    .C(clk),
    .CE(ce),
    .D(sig000002cc),
    .R(sig00000002),
    .Q(sig00000340)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000342 (
    .C(clk),
    .CE(ce),
    .D(sig000002a7),
    .R(sig00000002),
    .Q(sig000002ce)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000343 (
    .C(clk),
    .CE(ce),
    .D(sig000002d0),
    .R(sig00000002),
    .Q(sig00000008)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000344 (
    .C(clk),
    .CE(ce),
    .D(sig00000320),
    .R(sig00000002),
    .Q(sig000002c5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000345 (
    .C(clk),
    .CE(ce),
    .D(sig000002c8),
    .R(sig00000002),
    .Q(sig000002c9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000346 (
    .C(clk),
    .CE(ce),
    .D(sig000002f8),
    .R(sig00000002),
    .Q(sig000002d0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000034d (
    .C(clk),
    .CE(ce),
    .D(sig00000352),
    .R(sig00000002),
    .Q(sig00000349)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000034e (
    .C(clk),
    .CE(ce),
    .D(sig00000356),
    .R(sig00000002),
    .Q(sig0000034d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000034f (
    .C(clk),
    .CE(ce),
    .D(sig00000353),
    .R(sig00000002),
    .Q(sig0000034a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000350 (
    .C(clk),
    .CE(ce),
    .D(sig00000355),
    .R(sig00000002),
    .Q(sig0000000a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000351 (
    .C(clk),
    .CE(ce),
    .D(sig00000354),
    .R(sig00000002),
    .Q(sig0000034b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000352 (
    .C(clk),
    .CE(ce),
    .D(sig00000357),
    .R(sig00000002),
    .Q(sig0000034c)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000353 (
    .C(clk),
    .CE(ce),
    .D(sig00000351),
    .S(sig00000002),
    .Q(sig00000003)
  );
  XORCY   blk00000354 (
    .CI(sig00000373),
    .LI(sig00000002),
    .O(sig00000361)
  );
  XORCY   blk00000355 (
    .CI(sig00000374),
    .LI(sig00000002),
    .O(sig00000362)
  );
  XORCY   blk00000356 (
    .CI(sig00000375),
    .LI(sig00000002),
    .O(sig00000363)
  );
  MUXCY   blk00000357 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000379),
    .O(sig00000364)
  );
  MUXCY   blk00000358 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000037a),
    .O(sig00000365)
  );
  MUXCY   blk00000359 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000037b),
    .O(sig00000366)
  );
  MUXCY   blk0000035a (
    .CI(sig00000364),
    .DI(sig00000002),
    .S(sig0000037c),
    .O(sig00000367)
  );
  MUXCY   blk0000035b (
    .CI(sig00000365),
    .DI(sig00000002),
    .S(sig0000037d),
    .O(sig00000368)
  );
  MUXCY   blk0000035c (
    .CI(sig00000366),
    .DI(sig00000002),
    .S(sig0000037e),
    .O(sig00000369)
  );
  MUXCY   blk0000035d (
    .CI(sig00000376),
    .DI(sig00000002),
    .S(sig0000037f),
    .O(sig00000373)
  );
  MUXCY   blk0000035e (
    .CI(sig00000377),
    .DI(sig00000002),
    .S(sig00000380),
    .O(sig00000374)
  );
  MUXCY   blk0000035f (
    .CI(sig00000378),
    .DI(sig00000002),
    .S(sig00000381),
    .O(sig00000375)
  );
  MUXCY   blk00000360 (
    .CI(sig00000367),
    .DI(sig0000030c),
    .S(sig00000383),
    .O(sig00000376)
  );
  MUXCY   blk00000361 (
    .CI(sig00000368),
    .DI(sig0000030b),
    .S(sig00000384),
    .O(sig00000377)
  );
  MUXCY   blk00000362 (
    .CI(sig00000369),
    .DI(sig0000030a),
    .S(sig00000385),
    .O(sig00000378)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000363 (
    .I0(sig00000303),
    .I1(sig00000302),
    .I2(sig00000301),
    .O(sig0000037c)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000364 (
    .I0(sig00000303),
    .I1(sig00000302),
    .I2(sig00000301),
    .O(sig0000037d)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000365 (
    .I0(sig00000303),
    .I1(sig00000302),
    .I2(sig00000301),
    .O(sig0000037e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000366 (
    .I0(sig0000034c),
    .I1(sig0000000a),
    .I2(sig0000034d),
    .I3(sig00000003),
    .O(sig0000037f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000367 (
    .I0(sig0000034c),
    .I1(sig0000000a),
    .I2(sig0000034d),
    .I3(sig00000003),
    .O(sig00000380)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000368 (
    .I0(sig0000034c),
    .I1(sig0000000a),
    .I2(sig0000034d),
    .I3(sig00000003),
    .O(sig00000381)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk00000369 (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig0000030a),
    .O(sig00000383)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk0000036a (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig0000030a),
    .O(sig00000384)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk0000036b (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig0000030a),
    .O(sig00000385)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000036c (
    .C(clk),
    .D(sig00000361),
    .Q(sig0000030c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000036d (
    .C(clk),
    .D(sig00000362),
    .Q(sig0000030b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000036e (
    .C(clk),
    .D(sig00000363),
    .Q(sig0000030a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000036f (
    .C(clk),
    .CE(sig00000382),
    .D(sig00000358),
    .R(sig00000003),
    .Q(sig00000309)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000370 (
    .C(clk),
    .CE(sig00000382),
    .D(sig00000359),
    .R(sig00000003),
    .Q(sig00000308)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000371 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035a),
    .R(sig00000003),
    .Q(sig00000307)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000372 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035b),
    .R(sig00000003),
    .Q(sig00000306)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000373 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035c),
    .R(sig00000003),
    .Q(sig00000305)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000374 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035d),
    .R(sig00000003),
    .Q(sig00000304)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000375 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035e),
    .R(sig00000003),
    .Q(sig00000303)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000376 (
    .C(clk),
    .CE(sig00000382),
    .D(sig0000035f),
    .R(sig00000003),
    .Q(sig00000302)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000377 (
    .C(clk),
    .CE(sig00000382),
    .D(sig00000360),
    .R(sig00000003),
    .Q(sig00000301)
  );
  MUXF8   blk00000394 (
    .I0(sig00000390),
    .I1(sig0000038f),
    .S(sig000002a3),
    .O(sig00000386)
  );
  MUXF8   blk00000395 (
    .I0(sig00000392),
    .I1(sig00000391),
    .S(sig000002a3),
    .O(sig00000387)
  );
  MUXF8   blk00000396 (
    .I0(sig00000394),
    .I1(sig00000393),
    .S(sig000002a3),
    .O(sig00000388)
  );
  MUXF8   blk00000397 (
    .I0(sig00000396),
    .I1(sig00000395),
    .S(sig000002a3),
    .O(sig00000389)
  );
  MUXF8   blk00000398 (
    .I0(sig00000398),
    .I1(sig00000397),
    .S(sig000002a3),
    .O(sig0000038a)
  );
  MUXF8   blk00000399 (
    .I0(sig0000039a),
    .I1(sig00000399),
    .S(sig000002a3),
    .O(sig0000038b)
  );
  MUXF8   blk0000039a (
    .I0(sig0000039c),
    .I1(sig0000039b),
    .S(sig000002a3),
    .O(sig0000038c)
  );
  MUXF8   blk0000039b (
    .I0(sig0000039e),
    .I1(sig0000039d),
    .S(sig000002a3),
    .O(sig0000038d)
  );
  MUXF8   blk0000039c (
    .I0(sig000003a0),
    .I1(sig0000039f),
    .S(sig000002a3),
    .O(sig0000038e)
  );
  MUXF7   blk0000039d (
    .I0(sig000003aa),
    .I1(sig000003a1),
    .S(sig000002a4),
    .O(sig0000038f)
  );
  MUXF7   blk0000039e (
    .I0(sig000003bc),
    .I1(sig000003b3),
    .S(sig000002a4),
    .O(sig00000390)
  );
  MUXF7   blk0000039f (
    .I0(sig000003ab),
    .I1(sig000003a2),
    .S(sig000002a4),
    .O(sig00000391)
  );
  MUXF7   blk000003a0 (
    .I0(sig000003bd),
    .I1(sig000003b4),
    .S(sig000002a4),
    .O(sig00000392)
  );
  MUXF7   blk000003a1 (
    .I0(sig000003ac),
    .I1(sig000003a3),
    .S(sig000002a4),
    .O(sig00000393)
  );
  MUXF7   blk000003a2 (
    .I0(sig000003be),
    .I1(sig000003b5),
    .S(sig000002a4),
    .O(sig00000394)
  );
  MUXF7   blk000003a3 (
    .I0(sig000003ad),
    .I1(sig000003a4),
    .S(sig000002a4),
    .O(sig00000395)
  );
  MUXF7   blk000003a4 (
    .I0(sig000003bf),
    .I1(sig000003b6),
    .S(sig000002a4),
    .O(sig00000396)
  );
  MUXF7   blk000003a5 (
    .I0(sig000003ae),
    .I1(sig000003a5),
    .S(sig000002a4),
    .O(sig00000397)
  );
  MUXF7   blk000003a6 (
    .I0(sig000003c0),
    .I1(sig000003b7),
    .S(sig000002a4),
    .O(sig00000398)
  );
  MUXF7   blk000003a7 (
    .I0(sig000003af),
    .I1(sig000003a6),
    .S(sig000002a4),
    .O(sig00000399)
  );
  MUXF7   blk000003a8 (
    .I0(sig000003c1),
    .I1(sig000003b8),
    .S(sig000002a4),
    .O(sig0000039a)
  );
  MUXF7   blk000003a9 (
    .I0(sig000003b0),
    .I1(sig000003a7),
    .S(sig000002a4),
    .O(sig0000039b)
  );
  MUXF7   blk000003aa (
    .I0(sig000003c2),
    .I1(sig000003b9),
    .S(sig000002a4),
    .O(sig0000039c)
  );
  MUXF7   blk000003ab (
    .I0(sig000003b1),
    .I1(sig000003a8),
    .S(sig000002a4),
    .O(sig0000039d)
  );
  MUXF7   blk000003ac (
    .I0(sig000003c3),
    .I1(sig000003ba),
    .S(sig000002a4),
    .O(sig0000039e)
  );
  MUXF7   blk000003ad (
    .I0(sig000003b2),
    .I1(sig000003a9),
    .S(sig000002a4),
    .O(sig0000039f)
  );
  MUXF7   blk000003ae (
    .I0(sig000003c4),
    .I1(sig000003bb),
    .S(sig000002a4),
    .O(sig000003a0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003af (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b0 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b1 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b2 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b3 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b4 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b5 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b6 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b7 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003a9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b8 (
    .I0(sig00000308),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003aa)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b9 (
    .I0(sig00000307),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003ab)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ba (
    .I0(sig00000306),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003ac)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003bb (
    .I0(sig00000305),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003ad)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003bc (
    .I0(sig00000304),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003ae)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003bd (
    .I0(sig00000303),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003af)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003be (
    .I0(sig00000302),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003bf (
    .I0(sig00000301),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c0 (
    .I0(sig000002de),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c1 (
    .I0(sig00000304),
    .I1(sig00000305),
    .I2(sig00000306),
    .I3(sig00000307),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c2 (
    .I0(sig00000303),
    .I1(sig00000304),
    .I2(sig00000305),
    .I3(sig00000306),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c3 (
    .I0(sig00000302),
    .I1(sig00000303),
    .I2(sig00000304),
    .I3(sig00000305),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c4 (
    .I0(sig00000301),
    .I1(sig00000302),
    .I2(sig00000303),
    .I3(sig00000304),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c5 (
    .I0(sig000002de),
    .I1(sig00000301),
    .I2(sig00000302),
    .I3(sig00000303),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c6 (
    .I0(sig00000308),
    .I1(sig000002de),
    .I2(sig00000301),
    .I3(sig00000302),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c7 (
    .I0(sig00000307),
    .I1(sig00000308),
    .I2(sig000002de),
    .I3(sig00000301),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003b9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c8 (
    .I0(sig00000306),
    .I1(sig00000307),
    .I2(sig00000308),
    .I3(sig000002de),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003ba)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003c9 (
    .I0(sig00000305),
    .I1(sig00000306),
    .I2(sig00000307),
    .I3(sig00000308),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003bb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ca (
    .I0(sig000002de),
    .I1(sig00000301),
    .I2(sig00000302),
    .I3(sig00000303),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003bc)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003cb (
    .I0(sig00000308),
    .I1(sig000002de),
    .I2(sig00000301),
    .I3(sig00000302),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003bd)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003cc (
    .I0(sig00000307),
    .I1(sig00000308),
    .I2(sig000002de),
    .I3(sig00000301),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003be)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003cd (
    .I0(sig00000306),
    .I1(sig00000307),
    .I2(sig00000308),
    .I3(sig000002de),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003bf)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ce (
    .I0(sig00000305),
    .I1(sig00000306),
    .I2(sig00000307),
    .I3(sig00000308),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003c0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003cf (
    .I0(sig00000304),
    .I1(sig00000305),
    .I2(sig00000306),
    .I3(sig00000307),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003c1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d0 (
    .I0(sig00000303),
    .I1(sig00000304),
    .I2(sig00000305),
    .I3(sig00000306),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003c2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d1 (
    .I0(sig00000302),
    .I1(sig00000303),
    .I2(sig00000304),
    .I3(sig00000305),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003c3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003d2 (
    .I0(sig00000301),
    .I1(sig00000302),
    .I2(sig00000303),
    .I3(sig00000304),
    .I4(sig000002a6),
    .I5(sig000002a5),
    .O(sig000003c4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d3 (
    .C(clk),
    .CE(ce),
    .D(sig000003c5),
    .R(sig00000002),
    .Q(sig00000290)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d4 (
    .C(clk),
    .CE(ce),
    .D(sig00000386),
    .R(sig00000002),
    .Q(sig000003c5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d5 (
    .C(clk),
    .CE(ce),
    .D(sig000003c6),
    .R(sig00000002),
    .Q(sig0000028f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d6 (
    .C(clk),
    .CE(ce),
    .D(sig00000387),
    .R(sig00000002),
    .Q(sig000003c6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d7 (
    .C(clk),
    .CE(ce),
    .D(sig000003c7),
    .R(sig00000002),
    .Q(sig0000028e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d8 (
    .C(clk),
    .CE(ce),
    .D(sig00000388),
    .R(sig00000002),
    .Q(sig000003c7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d9 (
    .C(clk),
    .CE(ce),
    .D(sig000003c8),
    .R(sig00000002),
    .Q(sig0000028d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003da (
    .C(clk),
    .CE(ce),
    .D(sig00000389),
    .R(sig00000002),
    .Q(sig000003c8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003db (
    .C(clk),
    .CE(ce),
    .D(sig000003c9),
    .R(sig00000002),
    .Q(sig0000028c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003dc (
    .C(clk),
    .CE(ce),
    .D(sig0000038a),
    .R(sig00000002),
    .Q(sig000003c9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003dd (
    .C(clk),
    .CE(ce),
    .D(sig000003ca),
    .R(sig00000002),
    .Q(sig0000028b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003de (
    .C(clk),
    .CE(ce),
    .D(sig0000038b),
    .R(sig00000002),
    .Q(sig000003ca)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003df (
    .C(clk),
    .CE(ce),
    .D(sig000003cb),
    .R(sig00000002),
    .Q(sig0000028a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e0 (
    .C(clk),
    .CE(ce),
    .D(sig0000038c),
    .R(sig00000002),
    .Q(sig000003cb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e1 (
    .C(clk),
    .CE(ce),
    .D(sig000003cc),
    .R(sig00000002),
    .Q(sig00000289)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e2 (
    .C(clk),
    .CE(ce),
    .D(sig0000038d),
    .R(sig00000002),
    .Q(sig000003cc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e3 (
    .C(clk),
    .CE(ce),
    .D(sig000003cd),
    .R(sig00000002),
    .Q(sig00000288)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e4 (
    .C(clk),
    .CE(ce),
    .D(sig0000038e),
    .R(sig00000002),
    .Q(sig000003cd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000426 (
    .C(clk),
    .CE(ce),
    .D(sig000003e6),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000427 (
    .C(clk),
    .CE(ce),
    .D(sig000003e5),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000428 (
    .C(clk),
    .CE(ce),
    .D(sig000003e4),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000429 (
    .C(clk),
    .CE(ce),
    .D(sig000003e3),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042a (
    .C(clk),
    .CE(ce),
    .D(sig000003e2),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042b (
    .C(clk),
    .CE(ce),
    .D(sig000003e1),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042c (
    .C(clk),
    .CE(ce),
    .D(sig000003e0),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042d (
    .C(clk),
    .CE(ce),
    .D(sig000003df),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042e (
    .C(clk),
    .CE(ce),
    .D(sig000003de),
    .R(sig000003ce),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042f (
    .C(clk),
    .CE(ce),
    .D(sig00000007),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000430 (
    .C(clk),
    .CE(ce),
    .D(sig000003d8),
    .R(sig00000002),
    .Q(sig000003db)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000431 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000301),
    .Q(sig000003e7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000432 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000302),
    .Q(sig000003e8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000433 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000303),
    .Q(sig000003e9)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000434 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000304),
    .Q(sig000003ea)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000435 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000305),
    .Q(sig000003eb)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000436 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000306),
    .Q(sig000003ec)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000437 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000307),
    .Q(sig000003ed)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000438 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000308),
    .Q(sig000003ee)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000439 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000309),
    .Q(sig000003ef)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043a (
    .C(clk),
    .CE(ce),
    .D(sig000003e7),
    .R(sig00000002),
    .Q(sig000003e6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043b (
    .C(clk),
    .CE(ce),
    .D(sig000003e8),
    .R(sig00000002),
    .Q(sig000003e5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043c (
    .C(clk),
    .CE(ce),
    .D(sig000003e9),
    .R(sig00000002),
    .Q(sig000003e4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043d (
    .C(clk),
    .CE(ce),
    .D(sig000003ea),
    .R(sig00000002),
    .Q(sig000003e3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043e (
    .C(clk),
    .CE(ce),
    .D(sig000003eb),
    .R(sig00000002),
    .Q(sig000003e2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043f (
    .C(clk),
    .CE(ce),
    .D(sig000003ec),
    .R(sig00000002),
    .Q(sig000003e1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000440 (
    .C(clk),
    .CE(ce),
    .D(sig000003ed),
    .R(sig00000002),
    .Q(sig000003e0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000441 (
    .C(clk),
    .CE(ce),
    .D(sig000003ee),
    .R(sig00000002),
    .Q(sig000003df)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000442 (
    .C(clk),
    .CE(ce),
    .D(sig000003ef),
    .R(sig00000002),
    .Q(sig000003de)
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  blk00000468 (
    .I0(ce),
    .I1(sig00000008),
    .I2(sig0000004b),
    .I3(sig0000000b),
    .O(sig00000033)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000469 (
    .I0(sig0000000b),
    .I1(sig0000007f),
    .I2(sig00000131),
    .O(sig00000034)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046a (
    .I0(sig0000000b),
    .I1(sig00000089),
    .I2(sig0000013b),
    .O(sig0000003e)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046b (
    .I0(sig0000000b),
    .I1(sig0000008a),
    .I2(sig0000013c),
    .O(sig0000003f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046c (
    .I0(sig0000000b),
    .I1(sig0000008b),
    .I2(sig0000013d),
    .O(sig00000040)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046d (
    .I0(sig0000000b),
    .I1(sig0000008c),
    .I2(sig0000013e),
    .O(sig00000041)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046e (
    .I0(sig0000000b),
    .I1(sig0000008d),
    .I2(sig0000013f),
    .O(sig00000042)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000046f (
    .I0(sig0000000b),
    .I1(sig0000008e),
    .I2(sig00000140),
    .O(sig00000043)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk00000470 (
    .I0(sig00000141),
    .I1(sig0000000b),
    .O(sig00000044)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk00000471 (
    .I0(sig00000142),
    .I1(sig0000000b),
    .O(sig00000045)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000472 (
    .I0(sig0000000b),
    .I1(sig00000080),
    .I2(sig00000132),
    .O(sig00000035)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000473 (
    .I0(sig0000000b),
    .I1(sig00000081),
    .I2(sig00000133),
    .O(sig00000036)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000474 (
    .I0(sig0000000b),
    .I1(sig00000082),
    .I2(sig00000134),
    .O(sig00000037)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000475 (
    .I0(sig0000000b),
    .I1(sig00000083),
    .I2(sig00000135),
    .O(sig00000038)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000476 (
    .I0(sig0000000b),
    .I1(sig00000084),
    .I2(sig00000136),
    .O(sig00000039)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000477 (
    .I0(sig0000000b),
    .I1(sig00000085),
    .I2(sig00000137),
    .O(sig0000003a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000478 (
    .I0(sig0000000b),
    .I1(sig00000086),
    .I2(sig00000138),
    .O(sig0000003b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000479 (
    .I0(sig0000000b),
    .I1(sig00000087),
    .I2(sig00000139),
    .O(sig0000003c)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000047a (
    .I0(sig0000000b),
    .I1(sig00000088),
    .I2(sig0000013a),
    .O(sig0000003d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk0000047b (
    .I0(sig00000005),
    .I1(sig00000006),
    .O(sig00000032)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk0000047c (
    .I0(ce),
    .I1(sig000000e6),
    .O(sig00000046)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000047d (
    .I0(ce),
    .I1(sig000000e6),
    .O(sig00000047)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000047e (
    .I0(ce),
    .I1(scale_sch_we),
    .O(sig00000048)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000047f (
    .I0(sig0000004a),
    .I1(sig0000004c),
    .O(sig00000194)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000480 (
    .I0(sig0000004c),
    .I1(sig0000005d),
    .I2(sig00000065),
    .O(sig000001c4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000481 (
    .I0(sig0000004c),
    .I1(sig0000005e),
    .I2(sig00000066),
    .O(sig000001c5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000482 (
    .I0(sig0000004c),
    .I1(sig0000005f),
    .I2(sig00000067),
    .O(sig000001c6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000483 (
    .I0(sig0000004c),
    .I1(sig00000060),
    .I2(sig00000068),
    .O(sig000001c7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000484 (
    .I0(sig0000004c),
    .I1(sig00000061),
    .I2(sig00000069),
    .O(sig000001c8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000485 (
    .I0(sig0000004c),
    .I1(sig00000062),
    .I2(sig0000006a),
    .O(sig000001c9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000486 (
    .I0(sig0000004c),
    .I1(sig00000063),
    .I2(sig0000006b),
    .O(sig000001ca)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000487 (
    .I0(sig0000004c),
    .I1(sig00000064),
    .I2(sig0000006c),
    .O(sig000001cb)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000488 (
    .I0(sig0000004c),
    .I1(sig00000065),
    .I2(sig0000005d),
    .O(sig000001cc)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000489 (
    .I0(sig0000004c),
    .I1(sig00000066),
    .I2(sig0000005e),
    .O(sig000001cd)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048a (
    .I0(sig0000004c),
    .I1(sig00000067),
    .I2(sig0000005f),
    .O(sig000001ce)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048b (
    .I0(sig0000004c),
    .I1(sig00000068),
    .I2(sig00000060),
    .O(sig000001cf)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048c (
    .I0(sig0000004c),
    .I1(sig00000069),
    .I2(sig00000061),
    .O(sig000001d0)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048d (
    .I0(sig0000004c),
    .I1(sig0000006a),
    .I2(sig00000062),
    .O(sig000001d1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048e (
    .I0(sig0000004c),
    .I1(sig0000006b),
    .I2(sig00000063),
    .O(sig000001d2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000048f (
    .I0(sig0000004c),
    .I1(sig0000006c),
    .I2(sig00000064),
    .O(sig000001d3)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000490 (
    .I0(ce),
    .I1(sig000001d5),
    .O(sig000001d4)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  blk00000491 (
    .I0(sig00000228),
    .I1(sig0000022a),
    .I2(sig0000022c),
    .I3(sig0000022b),
    .O(sig00000227)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  blk00000492 (
    .I0(sig000000a3),
    .I1(sig0000009f),
    .I2(sig000000a0),
    .I3(sig000000a1),
    .I4(sig000000a2),
    .O(sig0000023e)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  blk00000493 (
    .I0(sig00000245),
    .I1(sig00000247),
    .I2(sig00000249),
    .I3(sig00000248),
    .O(sig00000244)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  blk00000494 (
    .I0(sig000000b1),
    .I1(sig000000ad),
    .I2(sig000000ae),
    .I3(sig000000af),
    .I4(sig000000b0),
    .O(sig0000025b)
  );
  LUT4 #(
    .INIT ( 16'h4446 ))
  blk00000495 (
    .I0(sig000002a3),
    .I1(sig000002a4),
    .I2(sig000002a5),
    .I3(sig000002a6),
    .O(sig00000283)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  blk00000496 (
    .I0(sig000002a3),
    .I1(sig000002a5),
    .I2(sig000002a6),
    .I3(sig000002a4),
    .O(sig00000287)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000497 (
    .I0(sig000002a3),
    .I1(sig000002a5),
    .I2(sig000002a6),
    .I3(sig000002a4),
    .O(sig000002f8)
  );
  LUT4 #(
    .INIT ( 16'h2224 ))
  blk00000498 (
    .I0(sig000002a4),
    .I1(sig000002a3),
    .I2(sig000002a5),
    .I3(sig000002a6),
    .O(sig00000284)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000499 (
    .I0(ce),
    .I1(sig000002b1),
    .I2(sig000002b0),
    .O(sig000002d3)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049a (
    .I0(ce),
    .I1(sig000002c4),
    .I2(sig000002af),
    .O(sig000002d4)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049b (
    .I0(ce),
    .I1(sig000002c3),
    .I2(sig000002ae),
    .O(sig000002d5)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049c (
    .I0(ce),
    .I1(sig000002c2),
    .I2(sig000002ad),
    .O(sig000002d6)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049d (
    .I0(ce),
    .I1(sig000002c1),
    .I2(sig000002ac),
    .O(sig000002d7)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049e (
    .I0(ce),
    .I1(sig000002c0),
    .I2(sig000002ab),
    .O(sig000002d8)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000049f (
    .I0(ce),
    .I1(sig000002bf),
    .I2(sig000002aa),
    .O(sig000002d9)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk000004a0 (
    .I0(ce),
    .I1(sig000002be),
    .I2(sig000002a9),
    .O(sig000002da)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk000004a1 (
    .I0(ce),
    .I1(sig000002bd),
    .I2(sig000002a8),
    .O(sig000002db)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  blk000004a2 (
    .I0(ce),
    .I1(sig0000030a),
    .I2(sig0000000a),
    .O(sig000002e9)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004a3 (
    .I0(sig0000000a),
    .I1(sig000002a6),
    .O(sig000002f6)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004a4 (
    .I0(sig0000000a),
    .I1(sig000002a5),
    .O(sig000002f5)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004a5 (
    .I0(sig000002a4),
    .I1(sig0000000a),
    .O(sig000002f4)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004a6 (
    .I0(sig0000000a),
    .I1(sig000002a3),
    .O(sig000002f3)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000004a7 (
    .I0(sig000002a3),
    .I1(sig000002a4),
    .O(sig000002df)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk000004a8 (
    .I0(sig000002a5),
    .I1(sig000002a6),
    .O(sig000002fa)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004a9 (
    .I0(ce),
    .I1(sig00000340),
    .O(sig0000032a)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  blk000004aa (
    .I0(sig0000034a),
    .I1(sig0000032b),
    .I2(unload),
    .I3(sig0000000a),
    .O(sig00000353)
  );
  LUT4 #(
    .INIT ( 16'h000E ))
  blk000004ab (
    .I0(sig0000034a),
    .I1(sig0000034d),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .O(sig00000350)
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  blk000004ac (
    .I0(sig0000034a),
    .I1(sig00000349),
    .I2(sig0000034d),
    .I3(sig0000034b),
    .I4(sig0000000a),
    .O(sig0000034f)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  blk000004ad (
    .I0(sig0000033e),
    .I1(sig00000349),
    .I2(sig00000003),
    .I3(start),
    .O(sig00000351)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk000004ae (
    .I0(sig00000349),
    .I1(sig0000033e),
    .I2(sig0000034d),
    .O(sig00000352)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004af (
    .I0(sig0000034b),
    .I1(sig0000000a),
    .O(sig0000034e)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk000004b0 (
    .I0(sig0000034b),
    .I1(sig0000033f),
    .I2(sig0000034c),
    .O(sig00000354)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004b1 (
    .I0(sig0000034b),
    .I1(sig0000033f),
    .O(sig00000355)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  blk000004b2 (
    .I0(sig0000032b),
    .I1(sig0000034a),
    .I2(unload),
    .O(sig00000356)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004b3 (
    .I0(sig00000003),
    .I1(start),
    .O(sig00000357)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  blk000004b4 (
    .I0(sig00000307),
    .I1(sig00000309),
    .I2(sig00000308),
    .I3(sig00000305),
    .I4(sig00000304),
    .I5(sig00000306),
    .O(sig00000379)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk000004b5 (
    .I0(sig00000307),
    .I1(sig00000309),
    .I2(sig00000308),
    .I3(sig00000305),
    .I4(sig00000304),
    .I5(sig00000306),
    .O(sig0000037b)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk000004b6 (
    .I0(sig00000309),
    .I1(sig00000308),
    .I2(sig00000307),
    .I3(sig00000305),
    .I4(sig00000304),
    .I5(sig00000306),
    .O(sig0000037a)
  );
  LUT4 #(
    .INIT ( 16'h008A ))
  blk000004b7 (
    .I0(ce),
    .I1(sig00000320),
    .I2(sig0000034a),
    .I3(sig00000003),
    .O(sig00000382)
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  blk000004b8 (
    .I0(ce),
    .I1(sig000003dd),
    .I2(sig00000349),
    .I3(sig000003db),
    .O(sig000003ce)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004b9 (
    .I0(NlwRenamedSig_OI_xn_index[0]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003cf)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004ba (
    .I0(NlwRenamedSig_OI_xn_index[1]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d0)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004bb (
    .I0(NlwRenamedSig_OI_xn_index[2]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d1)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004bc (
    .I0(NlwRenamedSig_OI_xn_index[3]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d2)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004bd (
    .I0(NlwRenamedSig_OI_xn_index[4]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d3)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004be (
    .I0(NlwRenamedSig_OI_xn_index[5]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d4)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004bf (
    .I0(NlwRenamedSig_OI_xn_index[6]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d5)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  blk000004c0 (
    .I0(sig0000030b),
    .I1(NlwRenamedSig_OI_xn_index[8]),
    .I2(sig00000003),
    .I3(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .O(sig000003d7)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000004c1 (
    .I0(NlwRenamedSig_OI_xn_index[7]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig0000030b),
    .I3(sig00000003),
    .O(sig000003d6)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000004c2 (
    .I0(sig000003db),
    .I1(sig000003dd),
    .I2(sig00000349),
    .O(sig00000007)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000004c3 (
    .I0(sig0000000a),
    .I1(sig000003db),
    .O(sig000003d8)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004c4 (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig0000030b),
    .O(sig000003d9)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000004c5 (
    .C(clk),
    .D(sig000003f0),
    .S(sig00000002),
    .Q(sig0000004a)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000004c6 (
    .C(clk),
    .D(sig000003f1),
    .S(sig00000002),
    .Q(sig00000049)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004c7 (
    .C(clk),
    .D(sig000003f2),
    .Q(sig000002d2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004c8 (
    .C(clk),
    .D(sig000003f3),
    .Q(sig000002c6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004c9 (
    .C(clk),
    .D(sig000003f4),
    .Q(sig00000320)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004ca (
    .C(clk),
    .D(sig000003f5),
    .Q(sig000002cc)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004cb (
    .C(clk),
    .D(sig000003f6),
    .Q(sig0000033e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004cc (
    .C(clk),
    .D(sig000003f7),
    .Q(sig000003da)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004cd (
    .C(clk),
    .D(sig000003f8),
    .Q(sig00000004)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004ce (
    .C(clk),
    .D(sig000003f9),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004cf (
    .I0(sig00000309),
    .I1(sig0000034c),
    .I2(sig0000034d),
    .I3(sig0000000a),
    .O(sig0000036a)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d0 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000308),
    .I3(sig0000000a),
    .O(sig0000036b)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d1 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000307),
    .I3(sig0000000a),
    .O(sig0000036c)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d2 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000306),
    .I3(sig0000000a),
    .O(sig0000036d)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d3 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000305),
    .I3(sig0000000a),
    .O(sig0000036e)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d4 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000304),
    .I3(sig0000000a),
    .O(sig0000036f)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d5 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000303),
    .I3(sig0000000a),
    .O(sig00000370)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d6 (
    .I0(sig0000034c),
    .I1(sig0000034d),
    .I2(sig00000302),
    .I3(sig0000000a),
    .O(sig00000371)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk000004d7 (
    .I0(sig0000000a),
    .I1(sig0000034d),
    .I2(sig0000034c),
    .I3(sig00000301),
    .O(sig00000372)
  );
  LUT5 #(
    .INIT ( 32'hFA2AAA2A ))
  blk000004d8 (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig0000030b),
    .I2(ce),
    .I3(sig00000003),
    .I4(start),
    .O(sig000003f9)
  );
  LUT5 #(
    .INIT ( 32'h2E2A2A2A ))
  blk000004d9 (
    .I0(sig000002cc),
    .I1(ce),
    .I2(sig000002ca),
    .I3(sig0000030c),
    .I4(sig0000034b),
    .O(sig000003f5)
  );
  LUT4 #(
    .INIT ( 16'h2E2A ))
  blk000004da (
    .I0(sig00000004),
    .I1(ce),
    .I2(sig0000030a),
    .I3(sig0000034d),
    .O(sig000003f8)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  blk000004db (
    .I0(ce),
    .I1(sig000003da),
    .I2(sig000003dd),
    .I3(sig00000349),
    .O(sig000003f7)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  blk000004dc (
    .I0(sig000003da),
    .I1(ce),
    .I2(sig0000033e),
    .I3(sig000003dc),
    .O(sig000003f6)
  );
  LUT6 #(
    .INIT ( 64'h5555511144444000 ))
  blk000004dd (
    .I0(sig000002bb),
    .I1(ce),
    .I2(sig0000030a),
    .I3(sig00000320),
    .I4(sig0000000a),
    .I5(sig000002d2),
    .O(sig000003f2)
  );
  LUT4 #(
    .INIT ( 16'h2E2A ))
  blk000004de (
    .I0(sig00000320),
    .I1(ce),
    .I2(sig000002bb),
    .I3(sig0000000a),
    .O(sig000003f4)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000004df (
    .I0(sig0000004a),
    .I1(ce),
    .I2(sig0000000b),
    .I3(sig00000049),
    .O(sig000003f0)
  );
  LUT6 #(
    .INIT ( 64'h0000000000D80000 ))
  blk000004e0 (
    .I0(ce),
    .I1(sig000002bc),
    .I2(sig000002c6),
    .I3(sig0000034e),
    .I4(sig00000350),
    .I5(sig0000034f),
    .O(sig000003f3)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk000004e1 (
    .I0(sig00000049),
    .I1(ce),
    .I2(fwd_inv_we),
    .I3(fwd_inv),
    .O(sig000003f1)
  );
  LUT4 #(
    .INIT ( 16'h4002 ))
  blk000004e2 (
    .I0(sig000002a3),
    .I1(sig000002a5),
    .I2(sig000002a6),
    .I3(sig000002a4),
    .O(sig00000286)
  );
  LUT4 #(
    .INIT ( 16'h4042 ))
  blk000004e3 (
    .I0(sig000002a3),
    .I1(sig000002a4),
    .I2(sig000002a5),
    .I3(sig000002a6),
    .O(sig00000285)
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  blk000004e4 (
    .I0(sig000002a3),
    .I1(sig000002a6),
    .I2(sig000002a5),
    .I3(sig000002a4),
    .O(sig00000280)
  );
  LUT4 #(
    .INIT ( 16'h5446 ))
  blk000004e5 (
    .I0(sig000002a3),
    .I1(sig000002a4),
    .I2(sig000002a5),
    .I3(sig000002a6),
    .O(sig00000282)
  );
  LUT4 #(
    .INIT ( 16'h5456 ))
  blk000004e6 (
    .I0(sig000002a3),
    .I1(sig000002a5),
    .I2(sig000002a4),
    .I3(sig000002a6),
    .O(sig00000281)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004e7 (
    .I0(sig00000315),
    .I1(sig00000309),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig0000001e)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004e8 (
    .I0(sig00000314),
    .I1(sig00000308),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig0000001f)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004e9 (
    .I0(sig00000313),
    .I1(sig00000307),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000020)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004ea (
    .I0(sig00000312),
    .I1(sig00000306),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000021)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004eb (
    .I0(sig00000311),
    .I1(sig00000305),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000022)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004ec (
    .I0(sig00000310),
    .I1(sig00000304),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000023)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004ed (
    .I0(sig0000030f),
    .I1(sig00000303),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000024)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004ee (
    .I0(sig0000030e),
    .I1(sig00000302),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000025)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk000004ef (
    .I0(sig0000030d),
    .I1(sig00000301),
    .I2(sig0000034b),
    .I3(sig0000000a),
    .I4(sig0000034f),
    .I5(sig00000350),
    .O(sig00000026)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f0 (
    .I0(sig00000329),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig0000031e),
    .O(sig00000027)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f1 (
    .I0(sig00000328),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig0000031d),
    .O(sig00000028)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f2 (
    .I0(sig00000327),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig0000031c),
    .O(sig00000029)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f3 (
    .I0(sig00000326),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig0000031b),
    .O(sig0000002a)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f4 (
    .I0(sig00000325),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig0000031a),
    .O(sig0000002b)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f5 (
    .I0(sig00000324),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig00000319),
    .O(sig0000002c)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f6 (
    .I0(sig00000323),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig00000318),
    .O(sig0000002d)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f7 (
    .I0(sig00000322),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig00000317),
    .O(sig0000002e)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk000004f8 (
    .I0(sig00000321),
    .I1(sig0000034b),
    .I2(sig0000000a),
    .I3(sig00000316),
    .O(sig0000002f)
  );
  INV   blk000004f9 (
    .I(sig000000d5),
    .O(sig00000030)
  );
  INV   blk000004fa (
    .I(sig000000ac),
    .O(sig00000222)
  );
  INV   blk000004fb (
    .I(sig000000ba),
    .O(sig0000023f)
  );
  INV   blk000004fc (
    .I(sig00000309),
    .O(sig000002de)
  );
  RAMB8BWER #(
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000 ),
    .INIT_00 ( 256'h302E2D2B2A2827252422211F1E1C1B191716141311100E0D0B09080605030200 ),
    .INIT_01 ( 256'h5958575655545251504F4E4C4B4A484746444342403F3E3C3B3A383735343231 ),
    .INIT_02 ( 256'h7675747473727271706F6F6E6D6C6B6A6A696867666564636261605F5E5D5C5B ),
    .INIT_03 ( 256'h808080808080807F7F7F7F7F7E7E7E7E7D7D7D7C7C7B7B7A7A7A797978777776 ),
    .INIT_04 ( 256'h77777879797A7A7A7B7B7C7C7D7D7D7E7E7E7E7F7F7F7F7F8080808080808080 ),
    .INIT_05 ( 256'h5C5D5E5F606162636465666768696A6A6B6C6D6E6F6F70717272737474757676 ),
    .INIT_06 ( 256'h32343537383A3B3C3E3F404243444647484A4B4C4E4F5051525455565758595B ),
    .INIT_07 ( 256'h0203050608090B0D0E101113141617191B1C1E1F2122242527282A2B2D2E3031 ),
    .INIT_08 ( 256'h77777879797A7A7A7B7B7C7C7D7D7D7E7E7E7E7F7F7F7F7F8080808080808080 ),
    .INIT_09 ( 256'h5C5D5E5F606162636465666768696A6A6B6C6D6E6F6F70717272737474757676 ),
    .INIT_0A ( 256'h32343537383A3B3C3E3F404243444647484A4B4C4E4F5051525455565758595B ),
    .INIT_0B ( 256'h0203050608090B0D0E101113141617191B1C1E1F2122242527282A2B2D2E3031 ),
    .INIT_0C ( 256'hD0D2D3D5D6D8D9DBDCDEDFE1E2E4E5E7E9EAECEDEFF0F2F3F5F7F8FAFBFDFE00 ),
    .INIT_0D ( 256'hA7A8A9AAABACAEAFB0B1B2B4B5B6B8B9BABCBDBEC0C1C2C4C5C6C8C9CBCCCECF ),
    .INIT_0E ( 256'h8A8B8C8C8D8E8E8F9091919293949596969798999A9B9C9D9E9FA0A1A2A3A4A5 ),
    .INIT_0F ( 256'h808080808080808181818181828282828383838484858586868687878889898A ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 1 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  blk000004fd (
    .RSTBRST(sig00000002),
    .ENBRDEN(sig0000032a),
    .REGCEA(sig0000032a),
    .ENAWREN(sig0000032a),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(sig0000032a),
    .RSTA(sig00000002),
    .WEAWEL({sig00000002, sig00000002}),
    .DOADO({\NLW_blk000004fd_DOADO<15>_UNCONNECTED , \NLW_blk000004fd_DOADO<14>_UNCONNECTED , \NLW_blk000004fd_DOADO<13>_UNCONNECTED , 
\NLW_blk000004fd_DOADO<12>_UNCONNECTED , \NLW_blk000004fd_DOADO<11>_UNCONNECTED , \NLW_blk000004fd_DOADO<10>_UNCONNECTED , 
\NLW_blk000004fd_DOADO<9>_UNCONNECTED , \NLW_blk000004fd_DOADO<8>_UNCONNECTED , sig00000292, sig00000293, sig00000294, sig00000295, sig00000296, 
sig00000297, sig00000298, sig00000299}),
    .DOPADOP({\NLW_blk000004fd_DOPADOP<1>_UNCONNECTED , sig00000291}),
    .DOPBDOP({\NLW_blk000004fd_DOPBDOP<1>_UNCONNECTED , sig0000029a}),
    .WEBWEU({sig00000002, sig00000002}),
    .ADDRAWRADDR({sig00000002, sig00000002, sig00000348, sig00000347, sig00000346, sig00000345, sig00000344, sig00000343, sig00000342, sig00000341, 
\NLW_blk000004fd_ADDRAWRADDR<2>_UNCONNECTED , \NLW_blk000004fd_ADDRAWRADDR<1>_UNCONNECTED , \NLW_blk000004fd_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_blk000004fd_DIPBDIP<1>_UNCONNECTED , \NLW_blk000004fd_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_blk000004fd_DIBDI<15>_UNCONNECTED , \NLW_blk000004fd_DIBDI<14>_UNCONNECTED , \NLW_blk000004fd_DIBDI<13>_UNCONNECTED , 
\NLW_blk000004fd_DIBDI<12>_UNCONNECTED , \NLW_blk000004fd_DIBDI<11>_UNCONNECTED , \NLW_blk000004fd_DIBDI<10>_UNCONNECTED , 
\NLW_blk000004fd_DIBDI<9>_UNCONNECTED , \NLW_blk000004fd_DIBDI<8>_UNCONNECTED , \NLW_blk000004fd_DIBDI<7>_UNCONNECTED , 
\NLW_blk000004fd_DIBDI<6>_UNCONNECTED , \NLW_blk000004fd_DIBDI<5>_UNCONNECTED , \NLW_blk000004fd_DIBDI<4>_UNCONNECTED , 
\NLW_blk000004fd_DIBDI<3>_UNCONNECTED , \NLW_blk000004fd_DIBDI<2>_UNCONNECTED , \NLW_blk000004fd_DIBDI<1>_UNCONNECTED , 
\NLW_blk000004fd_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_blk000004fd_DIADI<15>_UNCONNECTED , \NLW_blk000004fd_DIADI<14>_UNCONNECTED , \NLW_blk000004fd_DIADI<13>_UNCONNECTED , 
\NLW_blk000004fd_DIADI<12>_UNCONNECTED , \NLW_blk000004fd_DIADI<11>_UNCONNECTED , \NLW_blk000004fd_DIADI<10>_UNCONNECTED , 
\NLW_blk000004fd_DIADI<9>_UNCONNECTED , \NLW_blk000004fd_DIADI<8>_UNCONNECTED , sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .ADDRBRDADDR({sig00000002, sig00000001, sig00000348, sig00000347, sig00000346, sig00000345, sig00000344, sig00000343, sig00000342, sig00000341, 
\NLW_blk000004fd_ADDRBRDADDR<2>_UNCONNECTED , \NLW_blk000004fd_ADDRBRDADDR<1>_UNCONNECTED , \NLW_blk000004fd_ADDRBRDADDR<0>_UNCONNECTED }),
    .DOBDO({\NLW_blk000004fd_DOBDO<15>_UNCONNECTED , \NLW_blk000004fd_DOBDO<14>_UNCONNECTED , \NLW_blk000004fd_DOBDO<13>_UNCONNECTED , 
\NLW_blk000004fd_DOBDO<12>_UNCONNECTED , \NLW_blk000004fd_DOBDO<11>_UNCONNECTED , \NLW_blk000004fd_DOBDO<10>_UNCONNECTED , 
\NLW_blk000004fd_DOBDO<9>_UNCONNECTED , \NLW_blk000004fd_DOBDO<8>_UNCONNECTED , sig0000029b, sig0000029c, sig0000029d, sig0000029e, sig0000029f, 
sig000002a0, sig000002a1, sig000002a2}),
    .DIPADIP({\NLW_blk000004fd_DIPADIP<1>_UNCONNECTED , sig00000002})
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk000004fe (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004c),
    .Q(sig000003fa),
    .Q15(NLW_blk000004fe_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000004ff (
    .C(clk),
    .CE(ce),
    .D(sig000003fa),
    .Q(sig000001d5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000500 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig000002cf),
    .Q(sig000003fb),
    .Q15(NLW_blk00000500_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000501 (
    .C(clk),
    .CE(ce),
    .D(sig000003fb),
    .Q(sig000003fc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000502 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000195),
    .Q(sig000003fd),
    .Q15(NLW_blk00000502_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000503 (
    .C(clk),
    .CE(ce),
    .D(sig000003fd),
    .Q(sig00000163)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000504 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000307),
    .Q(sig000003fe),
    .Q15(NLW_blk00000504_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000505 (
    .C(clk),
    .CE(ce),
    .D(sig000003fe),
    .Q(sig00000323)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000506 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000309),
    .Q(sig000003ff),
    .Q15(NLW_blk00000506_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000507 (
    .C(clk),
    .CE(ce),
    .D(sig000003ff),
    .Q(sig00000321)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000508 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000308),
    .Q(sig00000400),
    .Q15(NLW_blk00000508_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000509 (
    .C(clk),
    .CE(ce),
    .D(sig00000400),
    .Q(sig00000322)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000050a (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000304),
    .Q(sig00000401),
    .Q15(NLW_blk0000050a_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050b (
    .C(clk),
    .CE(ce),
    .D(sig00000401),
    .Q(sig00000326)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000050c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000306),
    .Q(sig00000402),
    .Q15(NLW_blk0000050c_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050d (
    .C(clk),
    .CE(ce),
    .D(sig00000402),
    .Q(sig00000324)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000050e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000305),
    .Q(sig00000403),
    .Q15(NLW_blk0000050e_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050f (
    .C(clk),
    .CE(ce),
    .D(sig00000403),
    .Q(sig00000325)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000510 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000301),
    .Q(sig00000404),
    .Q15(NLW_blk00000510_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000511 (
    .C(clk),
    .CE(ce),
    .D(sig00000404),
    .Q(sig00000329)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000512 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000303),
    .Q(sig00000405),
    .Q15(NLW_blk00000512_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000513 (
    .C(clk),
    .CE(ce),
    .D(sig00000405),
    .Q(sig00000327)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000514 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000302),
    .Q(sig00000406),
    .Q15(NLW_blk00000514_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000515 (
    .C(clk),
    .CE(ce),
    .D(sig00000406),
    .Q(sig00000328)
  );
  FDRE   blk00000516 (
    .C(clk),
    .CE(ce),
    .D(sig00000001),
    .R(sig00000002),
    .Q(sig00000407)
  );
  FDRE   blk00000517 (
    .C(clk),
    .CE(ce),
    .D(sig00000407),
    .R(sig00000002),
    .Q(sig00000408)
  );
  FDRE   blk00000518 (
    .C(clk),
    .CE(ce),
    .D(sig00000408),
    .R(sig00000002),
    .Q(sig00000409)
  );
  FDRE   blk00000519 (
    .C(clk),
    .CE(ce),
    .D(sig00000409),
    .R(sig00000002),
    .Q(sig0000040a)
  );
  FDRE   blk0000051a (
    .C(clk),
    .CE(ce),
    .D(sig0000040a),
    .R(sig00000002),
    .Q(sig0000040b)
  );
  FDRE   blk0000051b (
    .C(clk),
    .CE(ce),
    .D(sig0000040b),
    .R(sig00000002),
    .Q(sig0000040c)
  );
  FDRE   blk0000051c (
    .C(clk),
    .CE(ce),
    .D(sig0000040c),
    .R(sig00000002),
    .Q(sig0000040d)
  );
  FDRE   blk0000051d (
    .C(clk),
    .CE(ce),
    .D(sig0000040d),
    .R(sig00000002),
    .Q(sig0000040e)
  );
  FDRE   blk0000051e (
    .C(clk),
    .CE(ce),
    .D(sig0000040e),
    .R(sig00000002),
    .Q(sig0000040f)
  );
  FDRE   blk0000051f (
    .C(clk),
    .CE(ce),
    .D(sig0000040f),
    .R(sig00000002),
    .Q(sig00000410)
  );
  FDRE   blk00000520 (
    .C(clk),
    .CE(ce),
    .D(sig00000410),
    .R(sig00000002),
    .Q(sig00000411)
  );
  FDRE   blk00000521 (
    .C(clk),
    .CE(ce),
    .D(sig00000411),
    .R(sig00000002),
    .Q(sig00000412)
  );
  FDRE   blk00000522 (
    .C(clk),
    .CE(ce),
    .D(sig00000412),
    .R(sig00000002),
    .Q(sig00000413)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000523 (
    .I0(sig000003fc),
    .I1(sig00000413),
    .O(sig00000414)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000524 (
    .C(clk),
    .CE(ce),
    .D(sig00000414),
    .R(sig00000002),
    .Q(sig0000004b)
  );
  RAMB8BWER #(
    .DATA_WIDTH_A ( 18 ),
    .DATA_WIDTH_B ( 18 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "FALSE" ),
    .EN_RSTRAM_B ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RSTTYPE ( "SYNC" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .SIM_COLLISION_CHECK ( "GENERATE_X_ONLY" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \blk000000e4/blk000000f6  (
    .RSTBRST(\blk000000e4/sig0000045b ),
    .ENBRDEN(ce),
    .REGCEA(\blk000000e4/sig0000045b ),
    .ENAWREN(ce),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(ce),
    .RSTA(\blk000000e4/sig0000045b ),
    .WEAWEL({sig00000031, sig00000031}),
    .DOADO({\NLW_blk000000e4/blk000000f6_DOADO<15>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<14>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<13>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<12>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<11>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<10>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<9>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<8>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<7>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<6>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<5>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<4>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<3>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<2>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<1>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<0>_UNCONNECTED }),
    .DOPADOP({\NLW_blk000000e4/blk000000f6_DOPADOP<1>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_blk000000e4/blk000000f6_DOPBDOP<1>_UNCONNECTED , \blk000000e4/sig0000044a }),
    .WEBWEU({\blk000000e4/sig0000045b , \blk000000e4/sig0000045b }),
    .ADDRAWRADDR({sig00000130, sig0000012f, sig0000012e, sig0000012d, sig0000012c, sig0000012b, sig0000012a, sig00000129, sig00000128, 
\blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b }),
    .DIPBDIP({\blk000000e4/sig0000045b , \blk000000e4/sig0000045b }),
    .DIBDI({\blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , 
\blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , 
\blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , 
\blk000000e4/sig0000045b }),
    .DIADI({\blk000000e4/sig0000045b , sig0000007c, sig0000007b, sig0000007a, sig00000079, sig00000078, sig00000077, sig00000076, sig00000074, 
sig00000073, sig00000072, sig00000071, sig00000070, sig0000006f, sig0000006e, sig0000006d}),
    .ADDRBRDADDR({sig00000127, sig00000126, sig00000125, sig00000124, sig00000123, sig00000122, sig00000121, sig00000120, sig0000011f, 
\blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b , \blk000000e4/sig0000045b }),
    .DOBDO({\NLW_blk000000e4/blk000000f6_DOBDO<15>_UNCONNECTED , \blk000000e4/sig00000443 , \blk000000e4/sig00000444 , \blk000000e4/sig00000445 , 
\blk000000e4/sig00000446 , \blk000000e4/sig00000447 , \blk000000e4/sig00000448 , \blk000000e4/sig00000449 , \blk000000e4/sig0000043b , 
\blk000000e4/sig0000043c , \blk000000e4/sig0000043d , \blk000000e4/sig0000043e , \blk000000e4/sig0000043f , \blk000000e4/sig00000440 , 
\blk000000e4/sig00000441 , \blk000000e4/sig00000442 }),
    .DIPADIP({\blk000000e4/sig0000045b , sig00000075})
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f5  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000443 ),
    .Q(sig000000f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f4  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000444 ),
    .Q(sig000000f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f3  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000445 ),
    .Q(sig000000f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f2  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000446 ),
    .Q(sig000000f3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f1  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000447 ),
    .Q(sig000000f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f0  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000448 ),
    .Q(sig000000f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ef  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000449 ),
    .Q(sig000000f0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ee  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000044a ),
    .Q(sig000000ef)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ed  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000043b ),
    .Q(sig000000ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ec  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000043c ),
    .Q(sig000000ed)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000eb  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000043d ),
    .Q(sig000000ec)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ea  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000043e ),
    .Q(sig000000eb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e9  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig0000043f ),
    .Q(sig000000ea)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e8  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000440 ),
    .Q(sig000000e9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e7  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000441 ),
    .Q(sig000000e8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e6  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig00000442 ),
    .Q(sig000000e7)
  );
  GND   \blk000000e4/blk000000e5  (
    .G(\blk000000e4/sig0000045b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000117/blk00000118/blk0000011c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000117/blk00000118/sig00000467 ),
    .Q(sig000000e6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000117/blk00000118/blk0000011b  (
    .A0(\blk00000117/blk00000118/sig00000465 ),
    .A1(\blk00000117/blk00000118/sig00000466 ),
    .A2(\blk00000117/blk00000118/sig00000465 ),
    .A3(\blk00000117/blk00000118/sig00000465 ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000009),
    .Q(\blk00000117/blk00000118/sig00000467 ),
    .Q15(\NLW_blk00000117/blk00000118/blk0000011b_Q15_UNCONNECTED )
  );
  VCC   \blk00000117/blk00000118/blk0000011a  (
    .P(\blk00000117/blk00000118/sig00000466 )
  );
  GND   \blk00000117/blk00000118/blk00000119  (
    .G(\blk00000117/blk00000118/sig00000465 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000013d/blk0000013e/blk00000142  (
    .C(clk),
    .CE(ce),
    .D(\blk0000013d/blk0000013e/sig00000472 ),
    .Q(sig000000d5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000013d/blk0000013e/blk00000141  (
    .A0(\blk0000013d/blk0000013e/sig00000471 ),
    .A1(\blk0000013d/blk0000013e/sig00000470 ),
    .A2(\blk0000013d/blk0000013e/sig00000471 ),
    .A3(\blk0000013d/blk0000013e/sig00000470 ),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004c),
    .Q(\blk0000013d/blk0000013e/sig00000472 ),
    .Q15(\NLW_blk0000013d/blk0000013e/blk00000141_Q15_UNCONNECTED )
  );
  VCC   \blk0000013d/blk0000013e/blk00000140  (
    .P(\blk0000013d/blk0000013e/sig00000471 )
  );
  GND   \blk0000013d/blk0000013e/blk0000013f  (
    .G(\blk0000013d/blk0000013e/sig00000470 )
  );
  INV   \blk00000143/blk00000177  (
    .I(sig00000030),
    .O(\blk00000143/sig000004c0 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000176  (
    .I0(sig000000e5),
    .I1(sig0000011e),
    .I2(sig00000030),
    .O(\blk00000143/sig000004c1 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000175  (
    .I0(sig000000e4),
    .I1(sig0000011c),
    .I2(sig00000030),
    .O(\blk00000143/sig000004aa )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000174  (
    .I0(sig000000e3),
    .I1(sig0000011b),
    .I2(sig00000030),
    .O(\blk00000143/sig000004ab )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000173  (
    .I0(sig000000e2),
    .I1(sig0000011a),
    .I2(sig00000030),
    .O(\blk00000143/sig000004ac )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000172  (
    .I0(sig000000e1),
    .I1(sig00000119),
    .I2(sig00000030),
    .O(\blk00000143/sig000004ad )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000171  (
    .I0(sig000000e0),
    .I1(sig00000118),
    .I2(sig00000030),
    .O(\blk00000143/sig000004ae )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000170  (
    .I0(sig000000df),
    .I1(sig00000117),
    .I2(sig00000030),
    .O(\blk00000143/sig000004af )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016f  (
    .I0(sig000000de),
    .I1(sig00000116),
    .I2(sig00000030),
    .O(\blk00000143/sig000004b0 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016e  (
    .I0(sig00000115),
    .I1(sig00000030),
    .O(\blk00000143/sig000004b1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016d  (
    .I0(sig00000114),
    .I1(sig00000030),
    .O(\blk00000143/sig000004b2 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016c  (
    .I0(sig000000e5),
    .I1(sig0000011e),
    .I2(sig00000030),
    .O(\blk00000143/sig000004a8 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016b  (
    .I0(sig000000e5),
    .I1(sig0000011d),
    .I2(sig00000030),
    .O(\blk00000143/sig000004a9 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016a  (
    .I0(sig00000113),
    .I1(sig00000030),
    .O(\blk00000143/sig000004b3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000169  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a7 ),
    .Q(sig000000c8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000168  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a6 ),
    .Q(sig000000c9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000167  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a5 ),
    .Q(sig000000ca)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000166  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a4 ),
    .Q(sig000000cb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000165  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a3 ),
    .Q(sig000000cc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000164  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a2 ),
    .Q(sig000000cd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000163  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a1 ),
    .Q(sig000000ce)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000162  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig000004a0 ),
    .Q(sig000000cf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000161  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000049f ),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000160  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000049e ),
    .Q(sig000000d1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000049d ),
    .Q(sig000000d2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000049c ),
    .Q(sig000000d3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000049b ),
    .Q(sig000000d4)
  );
  MUXCY   \blk00000143/blk0000015c  (
    .CI(\blk00000143/sig000004c0 ),
    .DI(sig00000002),
    .S(\blk00000143/sig000004b3 ),
    .O(\blk00000143/sig000004bf )
  );
  MUXCY   \blk00000143/blk0000015b  (
    .CI(\blk00000143/sig000004bf ),
    .DI(sig00000002),
    .S(\blk00000143/sig000004b2 ),
    .O(\blk00000143/sig000004be )
  );
  MUXCY   \blk00000143/blk0000015a  (
    .CI(\blk00000143/sig000004be ),
    .DI(sig00000002),
    .S(\blk00000143/sig000004b1 ),
    .O(\blk00000143/sig000004bd )
  );
  MUXCY   \blk00000143/blk00000159  (
    .CI(\blk00000143/sig000004bd ),
    .DI(sig000000de),
    .S(\blk00000143/sig000004b0 ),
    .O(\blk00000143/sig000004bc )
  );
  MUXCY   \blk00000143/blk00000158  (
    .CI(\blk00000143/sig000004bc ),
    .DI(sig000000df),
    .S(\blk00000143/sig000004af ),
    .O(\blk00000143/sig000004bb )
  );
  MUXCY   \blk00000143/blk00000157  (
    .CI(\blk00000143/sig000004bb ),
    .DI(sig000000e0),
    .S(\blk00000143/sig000004ae ),
    .O(\blk00000143/sig000004ba )
  );
  MUXCY   \blk00000143/blk00000156  (
    .CI(\blk00000143/sig000004ba ),
    .DI(sig000000e1),
    .S(\blk00000143/sig000004ad ),
    .O(\blk00000143/sig000004b9 )
  );
  MUXCY   \blk00000143/blk00000155  (
    .CI(\blk00000143/sig000004b9 ),
    .DI(sig000000e2),
    .S(\blk00000143/sig000004ac ),
    .O(\blk00000143/sig000004b8 )
  );
  MUXCY   \blk00000143/blk00000154  (
    .CI(\blk00000143/sig000004b8 ),
    .DI(sig000000e3),
    .S(\blk00000143/sig000004ab ),
    .O(\blk00000143/sig000004b7 )
  );
  MUXCY   \blk00000143/blk00000153  (
    .CI(\blk00000143/sig000004b7 ),
    .DI(sig000000e4),
    .S(\blk00000143/sig000004aa ),
    .O(\blk00000143/sig000004b6 )
  );
  MUXCY   \blk00000143/blk00000152  (
    .CI(\blk00000143/sig000004b6 ),
    .DI(sig000000e5),
    .S(\blk00000143/sig000004a9 ),
    .O(\blk00000143/sig000004b5 )
  );
  MUXCY   \blk00000143/blk00000151  (
    .CI(\blk00000143/sig000004b5 ),
    .DI(sig000000e5),
    .S(\blk00000143/sig000004c1 ),
    .O(\blk00000143/sig000004b4 )
  );
  XORCY   \blk00000143/blk00000150  (
    .CI(\blk00000143/sig000004c0 ),
    .LI(\blk00000143/sig000004b3 ),
    .O(\blk00000143/sig000004a7 )
  );
  XORCY   \blk00000143/blk0000014f  (
    .CI(\blk00000143/sig000004bf ),
    .LI(\blk00000143/sig000004b2 ),
    .O(\blk00000143/sig000004a6 )
  );
  XORCY   \blk00000143/blk0000014e  (
    .CI(\blk00000143/sig000004be ),
    .LI(\blk00000143/sig000004b1 ),
    .O(\blk00000143/sig000004a5 )
  );
  XORCY   \blk00000143/blk0000014d  (
    .CI(\blk00000143/sig000004bd ),
    .LI(\blk00000143/sig000004b0 ),
    .O(\blk00000143/sig000004a4 )
  );
  XORCY   \blk00000143/blk0000014c  (
    .CI(\blk00000143/sig000004bc ),
    .LI(\blk00000143/sig000004af ),
    .O(\blk00000143/sig000004a3 )
  );
  XORCY   \blk00000143/blk0000014b  (
    .CI(\blk00000143/sig000004bb ),
    .LI(\blk00000143/sig000004ae ),
    .O(\blk00000143/sig000004a2 )
  );
  XORCY   \blk00000143/blk0000014a  (
    .CI(\blk00000143/sig000004ba ),
    .LI(\blk00000143/sig000004ad ),
    .O(\blk00000143/sig000004a1 )
  );
  XORCY   \blk00000143/blk00000149  (
    .CI(\blk00000143/sig000004b9 ),
    .LI(\blk00000143/sig000004ac ),
    .O(\blk00000143/sig000004a0 )
  );
  XORCY   \blk00000143/blk00000148  (
    .CI(\blk00000143/sig000004b8 ),
    .LI(\blk00000143/sig000004ab ),
    .O(\blk00000143/sig0000049f )
  );
  XORCY   \blk00000143/blk00000147  (
    .CI(\blk00000143/sig000004b7 ),
    .LI(\blk00000143/sig000004aa ),
    .O(\blk00000143/sig0000049e )
  );
  XORCY   \blk00000143/blk00000146  (
    .CI(\blk00000143/sig000004b6 ),
    .LI(\blk00000143/sig000004a9 ),
    .O(\blk00000143/sig0000049d )
  );
  XORCY   \blk00000143/blk00000145  (
    .CI(\blk00000143/sig000004b5 ),
    .LI(\blk00000143/sig000004c1 ),
    .O(\blk00000143/sig0000049c )
  );
  XORCY   \blk00000143/blk00000144  (
    .CI(\blk00000143/sig000004b4 ),
    .LI(\blk00000143/sig000004a8 ),
    .O(\blk00000143/sig0000049b )
  );
  INV   \blk00000178/blk000001ac  (
    .I(sig00000030),
    .O(\blk00000178/sig0000050f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001ab  (
    .I0(sig000000dd),
    .I1(sig00000112),
    .I2(sig00000030),
    .O(\blk00000178/sig00000510 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001aa  (
    .I0(sig000000dc),
    .I1(sig00000110),
    .I2(sig00000030),
    .O(\blk00000178/sig000004f9 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a9  (
    .I0(sig000000db),
    .I1(sig0000010f),
    .I2(sig00000030),
    .O(\blk00000178/sig000004fa )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a8  (
    .I0(sig000000da),
    .I1(sig0000010e),
    .I2(sig00000030),
    .O(\blk00000178/sig000004fb )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a7  (
    .I0(sig000000d9),
    .I1(sig0000010d),
    .I2(sig00000030),
    .O(\blk00000178/sig000004fc )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a6  (
    .I0(sig000000d8),
    .I1(sig0000010c),
    .I2(sig00000030),
    .O(\blk00000178/sig000004fd )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a5  (
    .I0(sig000000d7),
    .I1(sig0000010b),
    .I2(sig00000030),
    .O(\blk00000178/sig000004fe )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a4  (
    .I0(sig000000d6),
    .I1(sig0000010a),
    .I2(sig00000030),
    .O(\blk00000178/sig000004ff )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk000001a3  (
    .I0(sig00000109),
    .I1(sig00000030),
    .O(\blk00000178/sig00000500 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk000001a2  (
    .I0(sig00000108),
    .I1(sig00000030),
    .O(\blk00000178/sig00000501 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a1  (
    .I0(sig000000dd),
    .I1(sig00000112),
    .I2(sig00000030),
    .O(\blk00000178/sig000004f7 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a0  (
    .I0(sig000000dd),
    .I1(sig00000111),
    .I2(sig00000030),
    .O(\blk00000178/sig000004f8 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk0000019f  (
    .I0(sig00000107),
    .I1(sig00000030),
    .O(\blk00000178/sig00000502 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f6 ),
    .Q(sig000000bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f5 ),
    .Q(sig000000bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f4 ),
    .Q(sig000000bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f3 ),
    .Q(sig000000be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f2 ),
    .Q(sig000000bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000199  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f1 ),
    .Q(sig000000c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000198  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004f0 ),
    .Q(sig000000c1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000197  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004ef ),
    .Q(sig000000c2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000196  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004ee ),
    .Q(sig000000c3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000195  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004ed ),
    .Q(sig000000c4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000194  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004ec ),
    .Q(sig000000c5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000193  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004eb ),
    .Q(sig000000c6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000192  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig000004ea ),
    .Q(sig000000c7)
  );
  MUXCY   \blk00000178/blk00000191  (
    .CI(\blk00000178/sig0000050f ),
    .DI(sig00000002),
    .S(\blk00000178/sig00000502 ),
    .O(\blk00000178/sig0000050e )
  );
  MUXCY   \blk00000178/blk00000190  (
    .CI(\blk00000178/sig0000050e ),
    .DI(sig00000002),
    .S(\blk00000178/sig00000501 ),
    .O(\blk00000178/sig0000050d )
  );
  MUXCY   \blk00000178/blk0000018f  (
    .CI(\blk00000178/sig0000050d ),
    .DI(sig00000002),
    .S(\blk00000178/sig00000500 ),
    .O(\blk00000178/sig0000050c )
  );
  MUXCY   \blk00000178/blk0000018e  (
    .CI(\blk00000178/sig0000050c ),
    .DI(sig000000d6),
    .S(\blk00000178/sig000004ff ),
    .O(\blk00000178/sig0000050b )
  );
  MUXCY   \blk00000178/blk0000018d  (
    .CI(\blk00000178/sig0000050b ),
    .DI(sig000000d7),
    .S(\blk00000178/sig000004fe ),
    .O(\blk00000178/sig0000050a )
  );
  MUXCY   \blk00000178/blk0000018c  (
    .CI(\blk00000178/sig0000050a ),
    .DI(sig000000d8),
    .S(\blk00000178/sig000004fd ),
    .O(\blk00000178/sig00000509 )
  );
  MUXCY   \blk00000178/blk0000018b  (
    .CI(\blk00000178/sig00000509 ),
    .DI(sig000000d9),
    .S(\blk00000178/sig000004fc ),
    .O(\blk00000178/sig00000508 )
  );
  MUXCY   \blk00000178/blk0000018a  (
    .CI(\blk00000178/sig00000508 ),
    .DI(sig000000da),
    .S(\blk00000178/sig000004fb ),
    .O(\blk00000178/sig00000507 )
  );
  MUXCY   \blk00000178/blk00000189  (
    .CI(\blk00000178/sig00000507 ),
    .DI(sig000000db),
    .S(\blk00000178/sig000004fa ),
    .O(\blk00000178/sig00000506 )
  );
  MUXCY   \blk00000178/blk00000188  (
    .CI(\blk00000178/sig00000506 ),
    .DI(sig000000dc),
    .S(\blk00000178/sig000004f9 ),
    .O(\blk00000178/sig00000505 )
  );
  MUXCY   \blk00000178/blk00000187  (
    .CI(\blk00000178/sig00000505 ),
    .DI(sig000000dd),
    .S(\blk00000178/sig000004f8 ),
    .O(\blk00000178/sig00000504 )
  );
  MUXCY   \blk00000178/blk00000186  (
    .CI(\blk00000178/sig00000504 ),
    .DI(sig000000dd),
    .S(\blk00000178/sig00000510 ),
    .O(\blk00000178/sig00000503 )
  );
  XORCY   \blk00000178/blk00000185  (
    .CI(\blk00000178/sig0000050f ),
    .LI(\blk00000178/sig00000502 ),
    .O(\blk00000178/sig000004f6 )
  );
  XORCY   \blk00000178/blk00000184  (
    .CI(\blk00000178/sig0000050e ),
    .LI(\blk00000178/sig00000501 ),
    .O(\blk00000178/sig000004f5 )
  );
  XORCY   \blk00000178/blk00000183  (
    .CI(\blk00000178/sig0000050d ),
    .LI(\blk00000178/sig00000500 ),
    .O(\blk00000178/sig000004f4 )
  );
  XORCY   \blk00000178/blk00000182  (
    .CI(\blk00000178/sig0000050c ),
    .LI(\blk00000178/sig000004ff ),
    .O(\blk00000178/sig000004f3 )
  );
  XORCY   \blk00000178/blk00000181  (
    .CI(\blk00000178/sig0000050b ),
    .LI(\blk00000178/sig000004fe ),
    .O(\blk00000178/sig000004f2 )
  );
  XORCY   \blk00000178/blk00000180  (
    .CI(\blk00000178/sig0000050a ),
    .LI(\blk00000178/sig000004fd ),
    .O(\blk00000178/sig000004f1 )
  );
  XORCY   \blk00000178/blk0000017f  (
    .CI(\blk00000178/sig00000509 ),
    .LI(\blk00000178/sig000004fc ),
    .O(\blk00000178/sig000004f0 )
  );
  XORCY   \blk00000178/blk0000017e  (
    .CI(\blk00000178/sig00000508 ),
    .LI(\blk00000178/sig000004fb ),
    .O(\blk00000178/sig000004ef )
  );
  XORCY   \blk00000178/blk0000017d  (
    .CI(\blk00000178/sig00000507 ),
    .LI(\blk00000178/sig000004fa ),
    .O(\blk00000178/sig000004ee )
  );
  XORCY   \blk00000178/blk0000017c  (
    .CI(\blk00000178/sig00000506 ),
    .LI(\blk00000178/sig000004f9 ),
    .O(\blk00000178/sig000004ed )
  );
  XORCY   \blk00000178/blk0000017b  (
    .CI(\blk00000178/sig00000505 ),
    .LI(\blk00000178/sig000004f8 ),
    .O(\blk00000178/sig000004ec )
  );
  XORCY   \blk00000178/blk0000017a  (
    .CI(\blk00000178/sig00000504 ),
    .LI(\blk00000178/sig00000510 ),
    .O(\blk00000178/sig000004eb )
  );
  XORCY   \blk00000178/blk00000179  (
    .CI(\blk00000178/sig00000503 ),
    .LI(\blk00000178/sig000004f7 ),
    .O(\blk00000178/sig000004ea )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d3  (
    .I0(sig00000113),
    .O(\blk000001ad/sig00000542 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d2  (
    .I0(sig00000114),
    .O(\blk000001ad/sig00000541 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d1  (
    .I0(sig00000115),
    .O(\blk000001ad/sig00000540 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001d0  (
    .I0(sig000000e5),
    .I1(sig0000011e),
    .O(\blk000001ad/sig0000053f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cf  (
    .I0(sig000000e4),
    .I1(sig0000011c),
    .O(\blk000001ad/sig0000052c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001ce  (
    .I0(sig000000e3),
    .I1(sig0000011b),
    .O(\blk000001ad/sig0000052d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cd  (
    .I0(sig000000e2),
    .I1(sig0000011a),
    .O(\blk000001ad/sig0000052e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cc  (
    .I0(sig000000e1),
    .I1(sig00000119),
    .O(\blk000001ad/sig0000052f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cb  (
    .I0(sig000000e0),
    .I1(sig00000118),
    .O(\blk000001ad/sig00000530 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001ca  (
    .I0(sig000000df),
    .I1(sig00000117),
    .O(\blk000001ad/sig00000531 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c9  (
    .I0(sig000000de),
    .I1(sig00000116),
    .O(\blk000001ad/sig00000532 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c8  (
    .I0(sig000000e5),
    .I1(sig0000011e),
    .O(\blk000001ad/sig0000052a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c7  (
    .I0(sig000000e5),
    .I1(sig0000011d),
    .O(\blk000001ad/sig0000052b )
  );
  MUXCY   \blk000001ad/blk000001c6  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk000001ad/sig00000542 ),
    .O(\blk000001ad/sig0000053e )
  );
  XORCY   \blk000001ad/blk000001c5  (
    .CI(sig00000002),
    .LI(\blk000001ad/sig00000542 ),
    .O(\NLW_blk000001ad/blk000001c5_O_UNCONNECTED )
  );
  MUXCY   \blk000001ad/blk000001c4  (
    .CI(\blk000001ad/sig0000053e ),
    .DI(sig00000002),
    .S(\blk000001ad/sig00000541 ),
    .O(\blk000001ad/sig0000053d )
  );
  MUXCY   \blk000001ad/blk000001c3  (
    .CI(\blk000001ad/sig0000053d ),
    .DI(sig00000002),
    .S(\blk000001ad/sig00000540 ),
    .O(\blk000001ad/sig0000053c )
  );
  MUXCY   \blk000001ad/blk000001c2  (
    .CI(\blk000001ad/sig0000053c ),
    .DI(sig000000de),
    .S(\blk000001ad/sig00000532 ),
    .O(\blk000001ad/sig0000053b )
  );
  MUXCY   \blk000001ad/blk000001c1  (
    .CI(\blk000001ad/sig0000053b ),
    .DI(sig000000df),
    .S(\blk000001ad/sig00000531 ),
    .O(\blk000001ad/sig0000053a )
  );
  MUXCY   \blk000001ad/blk000001c0  (
    .CI(\blk000001ad/sig0000053a ),
    .DI(sig000000e0),
    .S(\blk000001ad/sig00000530 ),
    .O(\blk000001ad/sig00000539 )
  );
  MUXCY   \blk000001ad/blk000001bf  (
    .CI(\blk000001ad/sig00000539 ),
    .DI(sig000000e1),
    .S(\blk000001ad/sig0000052f ),
    .O(\blk000001ad/sig00000538 )
  );
  MUXCY   \blk000001ad/blk000001be  (
    .CI(\blk000001ad/sig00000538 ),
    .DI(sig000000e2),
    .S(\blk000001ad/sig0000052e ),
    .O(\blk000001ad/sig00000537 )
  );
  MUXCY   \blk000001ad/blk000001bd  (
    .CI(\blk000001ad/sig00000537 ),
    .DI(sig000000e3),
    .S(\blk000001ad/sig0000052d ),
    .O(\blk000001ad/sig00000536 )
  );
  MUXCY   \blk000001ad/blk000001bc  (
    .CI(\blk000001ad/sig00000536 ),
    .DI(sig000000e4),
    .S(\blk000001ad/sig0000052c ),
    .O(\blk000001ad/sig00000535 )
  );
  MUXCY   \blk000001ad/blk000001bb  (
    .CI(\blk000001ad/sig00000535 ),
    .DI(sig000000e5),
    .S(\blk000001ad/sig0000052b ),
    .O(\blk000001ad/sig00000534 )
  );
  MUXCY   \blk000001ad/blk000001ba  (
    .CI(\blk000001ad/sig00000534 ),
    .DI(sig000000e5),
    .S(\blk000001ad/sig0000053f ),
    .O(\blk000001ad/sig00000533 )
  );
  XORCY   \blk000001ad/blk000001b9  (
    .CI(\blk000001ad/sig0000053e ),
    .LI(\blk000001ad/sig00000541 ),
    .O(\NLW_blk000001ad/blk000001b9_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b8  (
    .CI(\blk000001ad/sig0000053d ),
    .LI(\blk000001ad/sig00000540 ),
    .O(\NLW_blk000001ad/blk000001b8_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b7  (
    .CI(\blk000001ad/sig0000053c ),
    .LI(\blk000001ad/sig00000532 ),
    .O(\NLW_blk000001ad/blk000001b7_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b6  (
    .CI(\blk000001ad/sig0000053b ),
    .LI(\blk000001ad/sig00000531 ),
    .O(\NLW_blk000001ad/blk000001b6_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b5  (
    .CI(\blk000001ad/sig0000053a ),
    .LI(\blk000001ad/sig00000530 ),
    .O(\NLW_blk000001ad/blk000001b5_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b4  (
    .CI(\blk000001ad/sig00000539 ),
    .LI(\blk000001ad/sig0000052f ),
    .O(\NLW_blk000001ad/blk000001b4_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b3  (
    .CI(\blk000001ad/sig00000538 ),
    .LI(\blk000001ad/sig0000052e ),
    .O(\NLW_blk000001ad/blk000001b3_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b2  (
    .CI(\blk000001ad/sig00000537 ),
    .LI(\blk000001ad/sig0000052d ),
    .O(\NLW_blk000001ad/blk000001b2_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b1  (
    .CI(\blk000001ad/sig00000536 ),
    .LI(\blk000001ad/sig0000052c ),
    .O(\NLW_blk000001ad/blk000001b1_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b0  (
    .CI(\blk000001ad/sig00000535 ),
    .LI(\blk000001ad/sig0000052b ),
    .O(\NLW_blk000001ad/blk000001b0_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001af  (
    .CI(\blk000001ad/sig00000534 ),
    .LI(\blk000001ad/sig0000053f ),
    .O(\NLW_blk000001ad/blk000001af_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001ae  (
    .CI(\blk000001ad/sig00000533 ),
    .LI(\blk000001ad/sig0000052a ),
    .O(\NLW_blk000001ad/blk000001ae_O_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001fa  (
    .I0(sig00000107),
    .O(\blk000001d4/sig00000574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001f9  (
    .I0(sig00000108),
    .O(\blk000001d4/sig00000573 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001f8  (
    .I0(sig00000109),
    .O(\blk000001d4/sig00000572 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f7  (
    .I0(sig000000dd),
    .I1(sig00000112),
    .O(\blk000001d4/sig00000571 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f6  (
    .I0(sig000000dc),
    .I1(sig00000110),
    .O(\blk000001d4/sig0000055e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f5  (
    .I0(sig000000db),
    .I1(sig0000010f),
    .O(\blk000001d4/sig0000055f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f4  (
    .I0(sig000000da),
    .I1(sig0000010e),
    .O(\blk000001d4/sig00000560 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f3  (
    .I0(sig000000d9),
    .I1(sig0000010d),
    .O(\blk000001d4/sig00000561 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f2  (
    .I0(sig000000d8),
    .I1(sig0000010c),
    .O(\blk000001d4/sig00000562 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f1  (
    .I0(sig000000d7),
    .I1(sig0000010b),
    .O(\blk000001d4/sig00000563 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f0  (
    .I0(sig000000d6),
    .I1(sig0000010a),
    .O(\blk000001d4/sig00000564 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001ef  (
    .I0(sig000000dd),
    .I1(sig00000112),
    .O(\blk000001d4/sig0000055c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001ee  (
    .I0(sig000000dd),
    .I1(sig00000111),
    .O(\blk000001d4/sig0000055d )
  );
  MUXCY   \blk000001d4/blk000001ed  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000574 ),
    .O(\blk000001d4/sig00000570 )
  );
  XORCY   \blk000001d4/blk000001ec  (
    .CI(sig00000002),
    .LI(\blk000001d4/sig00000574 ),
    .O(\NLW_blk000001d4/blk000001ec_O_UNCONNECTED )
  );
  MUXCY   \blk000001d4/blk000001eb  (
    .CI(\blk000001d4/sig00000570 ),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000573 ),
    .O(\blk000001d4/sig0000056f )
  );
  MUXCY   \blk000001d4/blk000001ea  (
    .CI(\blk000001d4/sig0000056f ),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000572 ),
    .O(\blk000001d4/sig0000056e )
  );
  MUXCY   \blk000001d4/blk000001e9  (
    .CI(\blk000001d4/sig0000056e ),
    .DI(sig000000d6),
    .S(\blk000001d4/sig00000564 ),
    .O(\blk000001d4/sig0000056d )
  );
  MUXCY   \blk000001d4/blk000001e8  (
    .CI(\blk000001d4/sig0000056d ),
    .DI(sig000000d7),
    .S(\blk000001d4/sig00000563 ),
    .O(\blk000001d4/sig0000056c )
  );
  MUXCY   \blk000001d4/blk000001e7  (
    .CI(\blk000001d4/sig0000056c ),
    .DI(sig000000d8),
    .S(\blk000001d4/sig00000562 ),
    .O(\blk000001d4/sig0000056b )
  );
  MUXCY   \blk000001d4/blk000001e6  (
    .CI(\blk000001d4/sig0000056b ),
    .DI(sig000000d9),
    .S(\blk000001d4/sig00000561 ),
    .O(\blk000001d4/sig0000056a )
  );
  MUXCY   \blk000001d4/blk000001e5  (
    .CI(\blk000001d4/sig0000056a ),
    .DI(sig000000da),
    .S(\blk000001d4/sig00000560 ),
    .O(\blk000001d4/sig00000569 )
  );
  MUXCY   \blk000001d4/blk000001e4  (
    .CI(\blk000001d4/sig00000569 ),
    .DI(sig000000db),
    .S(\blk000001d4/sig0000055f ),
    .O(\blk000001d4/sig00000568 )
  );
  MUXCY   \blk000001d4/blk000001e3  (
    .CI(\blk000001d4/sig00000568 ),
    .DI(sig000000dc),
    .S(\blk000001d4/sig0000055e ),
    .O(\blk000001d4/sig00000567 )
  );
  MUXCY   \blk000001d4/blk000001e2  (
    .CI(\blk000001d4/sig00000567 ),
    .DI(sig000000dd),
    .S(\blk000001d4/sig0000055d ),
    .O(\blk000001d4/sig00000566 )
  );
  MUXCY   \blk000001d4/blk000001e1  (
    .CI(\blk000001d4/sig00000566 ),
    .DI(sig000000dd),
    .S(\blk000001d4/sig00000571 ),
    .O(\blk000001d4/sig00000565 )
  );
  XORCY   \blk000001d4/blk000001e0  (
    .CI(\blk000001d4/sig00000570 ),
    .LI(\blk000001d4/sig00000573 ),
    .O(\NLW_blk000001d4/blk000001e0_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001df  (
    .CI(\blk000001d4/sig0000056f ),
    .LI(\blk000001d4/sig00000572 ),
    .O(\NLW_blk000001d4/blk000001df_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001de  (
    .CI(\blk000001d4/sig0000056e ),
    .LI(\blk000001d4/sig00000564 ),
    .O(\NLW_blk000001d4/blk000001de_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001dd  (
    .CI(\blk000001d4/sig0000056d ),
    .LI(\blk000001d4/sig00000563 ),
    .O(\NLW_blk000001d4/blk000001dd_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001dc  (
    .CI(\blk000001d4/sig0000056c ),
    .LI(\blk000001d4/sig00000562 ),
    .O(\NLW_blk000001d4/blk000001dc_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001db  (
    .CI(\blk000001d4/sig0000056b ),
    .LI(\blk000001d4/sig00000561 ),
    .O(\NLW_blk000001d4/blk000001db_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001da  (
    .CI(\blk000001d4/sig0000056a ),
    .LI(\blk000001d4/sig00000560 ),
    .O(\NLW_blk000001d4/blk000001da_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d9  (
    .CI(\blk000001d4/sig00000569 ),
    .LI(\blk000001d4/sig0000055f ),
    .O(\NLW_blk000001d4/blk000001d9_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d8  (
    .CI(\blk000001d4/sig00000568 ),
    .LI(\blk000001d4/sig0000055e ),
    .O(\NLW_blk000001d4/blk000001d8_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d7  (
    .CI(\blk000001d4/sig00000567 ),
    .LI(\blk000001d4/sig0000055d ),
    .O(\NLW_blk000001d4/blk000001d7_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d6  (
    .CI(\blk000001d4/sig00000566 ),
    .LI(\blk000001d4/sig00000571 ),
    .O(\NLW_blk000001d4/blk000001d6_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d5  (
    .CI(\blk000001d4/sig00000565 ),
    .LI(\blk000001d4/sig0000055c ),
    .O(\NLW_blk000001d4/blk000001d5_O_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk0000029a  (
    .I0(sig00000253),
    .O(\blk00000283/sig00000594 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk00000299  (
    .I0(sig00000254),
    .O(\blk00000283/sig00000593 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk00000298  (
    .I0(sig00000255),
    .O(\blk00000283/sig00000592 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk00000297  (
    .I0(sig00000256),
    .O(\blk00000283/sig00000591 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk00000296  (
    .I0(sig00000257),
    .O(\blk00000283/sig00000590 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000283/blk00000295  (
    .I0(sig00000258),
    .O(\blk00000283/sig0000058f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000283/blk00000294  (
    .I0(sig00000252),
    .I1(sig00000246),
    .O(\blk00000283/sig00000587 )
  );
  MUXCY   \blk00000283/blk00000293  (
    .CI(\blk00000283/sig00000586 ),
    .DI(sig00000252),
    .S(\blk00000283/sig00000587 ),
    .O(\blk00000283/sig0000058e )
  );
  MUXCY   \blk00000283/blk00000292  (
    .CI(\blk00000283/sig0000058e ),
    .DI(sig00000253),
    .S(\blk00000283/sig00000594 ),
    .O(\blk00000283/sig0000058d )
  );
  MUXCY   \blk00000283/blk00000291  (
    .CI(\blk00000283/sig0000058d ),
    .DI(sig00000254),
    .S(\blk00000283/sig00000593 ),
    .O(\blk00000283/sig0000058c )
  );
  MUXCY   \blk00000283/blk00000290  (
    .CI(\blk00000283/sig0000058c ),
    .DI(sig00000255),
    .S(\blk00000283/sig00000592 ),
    .O(\blk00000283/sig0000058b )
  );
  MUXCY   \blk00000283/blk0000028f  (
    .CI(\blk00000283/sig0000058b ),
    .DI(sig00000256),
    .S(\blk00000283/sig00000591 ),
    .O(\blk00000283/sig0000058a )
  );
  MUXCY   \blk00000283/blk0000028e  (
    .CI(\blk00000283/sig0000058a ),
    .DI(sig00000257),
    .S(\blk00000283/sig00000590 ),
    .O(\blk00000283/sig00000589 )
  );
  MUXCY   \blk00000283/blk0000028d  (
    .CI(\blk00000283/sig00000589 ),
    .DI(sig00000258),
    .S(\blk00000283/sig0000058f ),
    .O(\blk00000283/sig00000588 )
  );
  XORCY   \blk00000283/blk0000028c  (
    .CI(\blk00000283/sig0000058e ),
    .LI(\blk00000283/sig00000594 ),
    .O(sig0000024b)
  );
  XORCY   \blk00000283/blk0000028b  (
    .CI(\blk00000283/sig0000058d ),
    .LI(\blk00000283/sig00000593 ),
    .O(sig0000024c)
  );
  XORCY   \blk00000283/blk0000028a  (
    .CI(\blk00000283/sig0000058c ),
    .LI(\blk00000283/sig00000592 ),
    .O(sig0000024d)
  );
  XORCY   \blk00000283/blk00000289  (
    .CI(\blk00000283/sig0000058b ),
    .LI(\blk00000283/sig00000591 ),
    .O(sig0000024e)
  );
  XORCY   \blk00000283/blk00000288  (
    .CI(\blk00000283/sig0000058a ),
    .LI(\blk00000283/sig00000590 ),
    .O(sig0000024f)
  );
  XORCY   \blk00000283/blk00000287  (
    .CI(\blk00000283/sig00000589 ),
    .LI(\blk00000283/sig0000058f ),
    .O(sig00000250)
  );
  XORCY   \blk00000283/blk00000286  (
    .CI(\blk00000283/sig00000588 ),
    .LI(sig00000259),
    .O(sig00000251)
  );
  XORCY   \blk00000283/blk00000285  (
    .CI(\blk00000283/sig00000586 ),
    .LI(\blk00000283/sig00000587 ),
    .O(sig0000024a)
  );
  GND   \blk00000283/blk00000284  (
    .G(\blk00000283/sig00000586 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002b2  (
    .I0(sig00000236),
    .O(\blk0000029b/sig000005b4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002b1  (
    .I0(sig00000237),
    .O(\blk0000029b/sig000005b3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002b0  (
    .I0(sig00000238),
    .O(\blk0000029b/sig000005b2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002af  (
    .I0(sig00000239),
    .O(\blk0000029b/sig000005b1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002ae  (
    .I0(sig0000023a),
    .O(\blk0000029b/sig000005b0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000029b/blk000002ad  (
    .I0(sig0000023b),
    .O(\blk0000029b/sig000005af )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000029b/blk000002ac  (
    .I0(sig00000235),
    .I1(sig00000229),
    .O(\blk0000029b/sig000005a7 )
  );
  MUXCY   \blk0000029b/blk000002ab  (
    .CI(\blk0000029b/sig000005a6 ),
    .DI(sig00000235),
    .S(\blk0000029b/sig000005a7 ),
    .O(\blk0000029b/sig000005ae )
  );
  MUXCY   \blk0000029b/blk000002aa  (
    .CI(\blk0000029b/sig000005ae ),
    .DI(sig00000236),
    .S(\blk0000029b/sig000005b4 ),
    .O(\blk0000029b/sig000005ad )
  );
  MUXCY   \blk0000029b/blk000002a9  (
    .CI(\blk0000029b/sig000005ad ),
    .DI(sig00000237),
    .S(\blk0000029b/sig000005b3 ),
    .O(\blk0000029b/sig000005ac )
  );
  MUXCY   \blk0000029b/blk000002a8  (
    .CI(\blk0000029b/sig000005ac ),
    .DI(sig00000238),
    .S(\blk0000029b/sig000005b2 ),
    .O(\blk0000029b/sig000005ab )
  );
  MUXCY   \blk0000029b/blk000002a7  (
    .CI(\blk0000029b/sig000005ab ),
    .DI(sig00000239),
    .S(\blk0000029b/sig000005b1 ),
    .O(\blk0000029b/sig000005aa )
  );
  MUXCY   \blk0000029b/blk000002a6  (
    .CI(\blk0000029b/sig000005aa ),
    .DI(sig0000023a),
    .S(\blk0000029b/sig000005b0 ),
    .O(\blk0000029b/sig000005a9 )
  );
  MUXCY   \blk0000029b/blk000002a5  (
    .CI(\blk0000029b/sig000005a9 ),
    .DI(sig0000023b),
    .S(\blk0000029b/sig000005af ),
    .O(\blk0000029b/sig000005a8 )
  );
  XORCY   \blk0000029b/blk000002a4  (
    .CI(\blk0000029b/sig000005ae ),
    .LI(\blk0000029b/sig000005b4 ),
    .O(sig0000022e)
  );
  XORCY   \blk0000029b/blk000002a3  (
    .CI(\blk0000029b/sig000005ad ),
    .LI(\blk0000029b/sig000005b3 ),
    .O(sig0000022f)
  );
  XORCY   \blk0000029b/blk000002a2  (
    .CI(\blk0000029b/sig000005ac ),
    .LI(\blk0000029b/sig000005b2 ),
    .O(sig00000230)
  );
  XORCY   \blk0000029b/blk000002a1  (
    .CI(\blk0000029b/sig000005ab ),
    .LI(\blk0000029b/sig000005b1 ),
    .O(sig00000231)
  );
  XORCY   \blk0000029b/blk000002a0  (
    .CI(\blk0000029b/sig000005aa ),
    .LI(\blk0000029b/sig000005b0 ),
    .O(sig00000232)
  );
  XORCY   \blk0000029b/blk0000029f  (
    .CI(\blk0000029b/sig000005a9 ),
    .LI(\blk0000029b/sig000005af ),
    .O(sig00000233)
  );
  XORCY   \blk0000029b/blk0000029e  (
    .CI(\blk0000029b/sig000005a8 ),
    .LI(sig0000023c),
    .O(sig00000234)
  );
  XORCY   \blk0000029b/blk0000029d  (
    .CI(\blk0000029b/sig000005a6 ),
    .LI(\blk0000029b/sig000005a7 ),
    .O(sig0000022d)
  );
  GND   \blk0000029b/blk0000029c  (
    .G(\blk0000029b/sig000005a6 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000347/blk00000348/blk0000034c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000347/blk00000348/sig000005c0 ),
    .Q(sig0000000b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000347/blk00000348/blk0000034b  (
    .A0(\blk00000347/blk00000348/sig000005bf ),
    .A1(\blk00000347/blk00000348/sig000005be ),
    .A2(\blk00000347/blk00000348/sig000005be ),
    .A3(\blk00000347/blk00000348/sig000005be ),
    .CE(ce),
    .CLK(clk),
    .D(sig0000034c),
    .Q(\blk00000347/blk00000348/sig000005c0 ),
    .Q15(\NLW_blk00000347/blk00000348/blk0000034b_Q15_UNCONNECTED )
  );
  VCC   \blk00000347/blk00000348/blk0000034a  (
    .P(\blk00000347/blk00000348/sig000005bf )
  );
  GND   \blk00000347/blk00000348/blk00000349  (
    .G(\blk00000347/blk00000348/sig000005be )
  );
  INV   \blk00000378/blk00000393  (
    .I(sig0000036a),
    .O(\blk00000378/sig000005dd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk00000392  (
    .I0(sig0000036b),
    .O(\blk00000378/sig000005e4 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk00000391  (
    .I0(sig0000036c),
    .O(\blk00000378/sig000005e3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk00000390  (
    .I0(sig0000036d),
    .O(\blk00000378/sig000005e2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk0000038f  (
    .I0(sig0000036e),
    .O(\blk00000378/sig000005e1 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk0000038e  (
    .I0(sig0000036f),
    .O(\blk00000378/sig000005e0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk0000038d  (
    .I0(sig00000370),
    .O(\blk00000378/sig000005df )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000378/blk0000038c  (
    .I0(sig00000371),
    .O(\blk00000378/sig000005de )
  );
  MUXCY   \blk00000378/blk0000038b  (
    .CI(\blk00000378/sig000005d4 ),
    .DI(\blk00000378/sig000005d3 ),
    .S(\blk00000378/sig000005dd ),
    .O(\blk00000378/sig000005dc )
  );
  XORCY   \blk00000378/blk0000038a  (
    .CI(\blk00000378/sig000005d4 ),
    .LI(\blk00000378/sig000005dd ),
    .O(sig00000358)
  );
  XORCY   \blk00000378/blk00000389  (
    .CI(\blk00000378/sig000005d5 ),
    .LI(sig00000372),
    .O(sig00000360)
  );
  MUXCY   \blk00000378/blk00000388  (
    .CI(\blk00000378/sig000005dc ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005e4 ),
    .O(\blk00000378/sig000005db )
  );
  XORCY   \blk00000378/blk00000387  (
    .CI(\blk00000378/sig000005dc ),
    .LI(\blk00000378/sig000005e4 ),
    .O(sig00000359)
  );
  MUXCY   \blk00000378/blk00000386  (
    .CI(\blk00000378/sig000005db ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005e3 ),
    .O(\blk00000378/sig000005da )
  );
  XORCY   \blk00000378/blk00000385  (
    .CI(\blk00000378/sig000005db ),
    .LI(\blk00000378/sig000005e3 ),
    .O(sig0000035a)
  );
  MUXCY   \blk00000378/blk00000384  (
    .CI(\blk00000378/sig000005da ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005e2 ),
    .O(\blk00000378/sig000005d9 )
  );
  XORCY   \blk00000378/blk00000383  (
    .CI(\blk00000378/sig000005da ),
    .LI(\blk00000378/sig000005e2 ),
    .O(sig0000035b)
  );
  MUXCY   \blk00000378/blk00000382  (
    .CI(\blk00000378/sig000005d9 ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005e1 ),
    .O(\blk00000378/sig000005d8 )
  );
  XORCY   \blk00000378/blk00000381  (
    .CI(\blk00000378/sig000005d9 ),
    .LI(\blk00000378/sig000005e1 ),
    .O(sig0000035c)
  );
  MUXCY   \blk00000378/blk00000380  (
    .CI(\blk00000378/sig000005d8 ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005e0 ),
    .O(\blk00000378/sig000005d7 )
  );
  XORCY   \blk00000378/blk0000037f  (
    .CI(\blk00000378/sig000005d8 ),
    .LI(\blk00000378/sig000005e0 ),
    .O(sig0000035d)
  );
  MUXCY   \blk00000378/blk0000037e  (
    .CI(\blk00000378/sig000005d7 ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005df ),
    .O(\blk00000378/sig000005d6 )
  );
  XORCY   \blk00000378/blk0000037d  (
    .CI(\blk00000378/sig000005d7 ),
    .LI(\blk00000378/sig000005df ),
    .O(sig0000035e)
  );
  MUXCY   \blk00000378/blk0000037c  (
    .CI(\blk00000378/sig000005d6 ),
    .DI(\blk00000378/sig000005d4 ),
    .S(\blk00000378/sig000005de ),
    .O(\blk00000378/sig000005d5 )
  );
  XORCY   \blk00000378/blk0000037b  (
    .CI(\blk00000378/sig000005d6 ),
    .LI(\blk00000378/sig000005de ),
    .O(sig0000035f)
  );
  GND   \blk00000378/blk0000037a  (
    .G(\blk00000378/sig000005d4 )
  );
  VCC   \blk00000378/blk00000379  (
    .P(\blk00000378/sig000005d3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003fa  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000617 ),
    .Q(sig00000316)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003f9  (
    .CLK(clk),
    .D(sig00000288),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000617 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003f9_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003f8  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000616 ),
    .Q(sig00000317)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003f7  (
    .CLK(clk),
    .D(sig00000289),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000616 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003f7_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003f6  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000615 ),
    .Q(sig00000318)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003f5  (
    .CLK(clk),
    .D(sig0000028a),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000615 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003f5_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003f4  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000614 ),
    .Q(sig00000319)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003f3  (
    .CLK(clk),
    .D(sig0000028b),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000614 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003f3_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003f2  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000613 ),
    .Q(sig0000031a)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003f1  (
    .CLK(clk),
    .D(sig0000028c),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000613 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003f1_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003f0  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000612 ),
    .Q(sig0000031b)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003ef  (
    .CLK(clk),
    .D(sig0000028d),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000612 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003ef_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003ee  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000611 ),
    .Q(sig0000031d)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003ed  (
    .CLK(clk),
    .D(sig0000028f),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000611 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003ed_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003ec  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig00000610 ),
    .Q(sig0000031e)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003eb  (
    .CLK(clk),
    .D(sig00000290),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig00000610 ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003eb_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003e5/blk000003e6/blk000003ea  (
    .C(clk),
    .CE(ce),
    .D(\blk000003e5/blk000003e6/sig0000060f ),
    .Q(sig0000031c)
  );
  SRLC32E #(
    .INIT ( 32'h00000000 ))
  \blk000003e5/blk000003e6/blk000003e9  (
    .CLK(clk),
    .D(sig0000028e),
    .CE(ce),
    .Q(\blk000003e5/blk000003e6/sig0000060f ),
    .Q31(\NLW_blk000003e5/blk000003e6/blk000003e9_Q31_UNCONNECTED ),
    .A({\blk000003e5/blk000003e6/sig0000060e , \blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d , 
\blk000003e5/blk000003e6/sig0000060d , \blk000003e5/blk000003e6/sig0000060d })
  );
  VCC   \blk000003e5/blk000003e6/blk000003e8  (
    .P(\blk000003e5/blk000003e6/sig0000060e )
  );
  GND   \blk000003e5/blk000003e6/blk000003e7  (
    .G(\blk000003e5/blk000003e6/sig0000060d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003fb/blk000003fc/blk00000400  (
    .C(clk),
    .CE(ce),
    .D(\blk000003fb/blk000003fc/sig00000622 ),
    .Q(sig000002bc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000003fb/blk000003fc/blk000003ff  (
    .A0(\blk000003fb/blk000003fc/sig00000621 ),
    .A1(\blk000003fb/blk000003fc/sig00000621 ),
    .A2(\blk000003fb/blk000003fc/sig00000620 ),
    .A3(\blk000003fb/blk000003fc/sig00000621 ),
    .CE(ce),
    .CLK(clk),
    .D(sig000002c5),
    .Q(\blk000003fb/blk000003fc/sig00000622 ),
    .Q15(\NLW_blk000003fb/blk000003fc/blk000003ff_Q15_UNCONNECTED )
  );
  VCC   \blk000003fb/blk000003fc/blk000003fe  (
    .P(\blk000003fb/blk000003fc/sig00000621 )
  );
  GND   \blk000003fb/blk000003fc/blk000003fd  (
    .G(\blk000003fb/blk000003fc/sig00000620 )
  );
  INV   \blk00000401/blk0000040d  (
    .I(sig000002f6),
    .O(\blk00000401/sig00000630 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000401/blk0000040c  (
    .I0(sig000002f5),
    .O(\blk00000401/sig00000632 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000401/blk0000040b  (
    .I0(sig000002f4),
    .O(\blk00000401/sig00000631 )
  );
  MUXCY   \blk00000401/blk0000040a  (
    .CI(\blk00000401/sig0000062c ),
    .DI(\blk00000401/sig0000062b ),
    .S(\blk00000401/sig00000630 ),
    .O(\blk00000401/sig0000062f )
  );
  XORCY   \blk00000401/blk00000409  (
    .CI(\blk00000401/sig0000062c ),
    .LI(\blk00000401/sig00000630 ),
    .O(sig000002fe)
  );
  XORCY   \blk00000401/blk00000408  (
    .CI(\blk00000401/sig0000062d ),
    .LI(sig000002f3),
    .O(sig000002fb)
  );
  MUXCY   \blk00000401/blk00000407  (
    .CI(\blk00000401/sig0000062f ),
    .DI(\blk00000401/sig0000062c ),
    .S(\blk00000401/sig00000632 ),
    .O(\blk00000401/sig0000062e )
  );
  XORCY   \blk00000401/blk00000406  (
    .CI(\blk00000401/sig0000062f ),
    .LI(\blk00000401/sig00000632 ),
    .O(sig000002fd)
  );
  MUXCY   \blk00000401/blk00000405  (
    .CI(\blk00000401/sig0000062e ),
    .DI(\blk00000401/sig0000062c ),
    .S(\blk00000401/sig00000631 ),
    .O(\blk00000401/sig0000062d )
  );
  XORCY   \blk00000401/blk00000404  (
    .CI(\blk00000401/sig0000062e ),
    .LI(\blk00000401/sig00000631 ),
    .O(sig000002fc)
  );
  GND   \blk00000401/blk00000403  (
    .G(\blk00000401/sig0000062c )
  );
  VCC   \blk00000401/blk00000402  (
    .P(\blk00000401/sig0000062b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000040e/blk0000040f/blk00000413  (
    .C(clk),
    .CE(ce),
    .D(\blk0000040e/blk0000040f/sig0000063e ),
    .Q(sig000003dc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000040e/blk0000040f/blk00000412  (
    .A0(\blk0000040e/blk0000040f/sig0000063d ),
    .A1(\blk0000040e/blk0000040f/sig0000063c ),
    .A2(\blk0000040e/blk0000040f/sig0000063c ),
    .A3(\blk0000040e/blk0000040f/sig0000063c ),
    .CE(ce),
    .CLK(clk),
    .D(sig0000030a),
    .Q(\blk0000040e/blk0000040f/sig0000063e ),
    .Q15(\NLW_blk0000040e/blk0000040f/blk00000412_Q15_UNCONNECTED )
  );
  VCC   \blk0000040e/blk0000040f/blk00000411  (
    .P(\blk0000040e/blk0000040f/sig0000063d )
  );
  GND   \blk0000040e/blk0000040f/blk00000410  (
    .G(\blk0000040e/blk0000040f/sig0000063c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000414/blk00000415/blk00000419  (
    .C(clk),
    .CE(ce),
    .D(\blk00000414/blk00000415/sig0000064a ),
    .Q(sig0000033f)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000414/blk00000415/blk00000418  (
    .A0(\blk00000414/blk00000415/sig00000649 ),
    .A1(\blk00000414/blk00000415/sig00000648 ),
    .A2(\blk00000414/blk00000415/sig00000648 ),
    .A3(\blk00000414/blk00000415/sig00000648 ),
    .CE(ce),
    .CLK(clk),
    .D(sig000003d9),
    .Q(\blk00000414/blk00000415/sig0000064a ),
    .Q15(\NLW_blk00000414/blk00000415/blk00000418_Q15_UNCONNECTED )
  );
  VCC   \blk00000414/blk00000415/blk00000417  (
    .P(\blk00000414/blk00000415/sig00000649 )
  );
  GND   \blk00000414/blk00000415/blk00000416  (
    .G(\blk00000414/blk00000415/sig00000648 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000041a/blk0000041b/blk0000041f  (
    .C(clk),
    .CE(ce),
    .D(\blk0000041a/blk0000041b/sig00000656 ),
    .Q(sig00000005)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000041a/blk0000041b/blk0000041e  (
    .A0(\blk0000041a/blk0000041b/sig00000655 ),
    .A1(\blk0000041a/blk0000041b/sig00000654 ),
    .A2(\blk0000041a/blk0000041b/sig00000654 ),
    .A3(\blk0000041a/blk0000041b/sig00000654 ),
    .CE(ce),
    .CLK(clk),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .Q(\blk0000041a/blk0000041b/sig00000656 ),
    .Q15(\NLW_blk0000041a/blk0000041b/blk0000041e_Q15_UNCONNECTED )
  );
  VCC   \blk0000041a/blk0000041b/blk0000041d  (
    .P(\blk0000041a/blk0000041b/sig00000655 )
  );
  GND   \blk0000041a/blk0000041b/blk0000041c  (
    .G(\blk0000041a/blk0000041b/sig00000654 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000420/blk00000421/blk00000425  (
    .C(clk),
    .CE(ce),
    .D(\blk00000420/blk00000421/sig00000662 ),
    .Q(sig000003dd)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000420/blk00000421/blk00000424  (
    .A0(\blk00000420/blk00000421/sig00000660 ),
    .A1(\blk00000420/blk00000421/sig00000661 ),
    .A2(\blk00000420/blk00000421/sig00000660 ),
    .A3(\blk00000420/blk00000421/sig00000660 ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000004),
    .Q(\blk00000420/blk00000421/sig00000662 ),
    .Q15(\NLW_blk00000420/blk00000421/blk00000424_Q15_UNCONNECTED )
  );
  VCC   \blk00000420/blk00000421/blk00000423  (
    .P(\blk00000420/blk00000421/sig00000661 )
  );
  GND   \blk00000420/blk00000421/blk00000422  (
    .G(\blk00000420/blk00000421/sig00000660 )
  );
  INV   \blk00000443/blk00000467  (
    .I(sig000003cf),
    .O(\blk00000443/sig0000068b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000466  (
    .I0(sig000003d0),
    .O(\blk00000443/sig00000692 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000465  (
    .I0(sig000003d1),
    .O(\blk00000443/sig00000691 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000464  (
    .I0(sig000003d2),
    .O(\blk00000443/sig00000690 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000463  (
    .I0(sig000003d3),
    .O(\blk00000443/sig0000068f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000462  (
    .I0(sig000003d4),
    .O(\blk00000443/sig0000068e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000461  (
    .I0(sig000003d5),
    .O(\blk00000443/sig0000068d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000443/blk00000460  (
    .I0(sig000003d6),
    .O(\blk00000443/sig0000068c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000689 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000686 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000684 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000682 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000680 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk0000045a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig0000067e ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk00000459  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig0000067c ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk00000458  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig0000067a ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000443/blk00000457  (
    .C(clk),
    .CE(ce),
    .D(\blk00000443/sig00000688 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[8])
  );
  MUXCY   \blk00000443/blk00000456  (
    .CI(\blk00000443/sig00000679 ),
    .DI(\blk00000443/sig00000678 ),
    .S(\blk00000443/sig0000068b ),
    .O(\blk00000443/sig0000068a )
  );
  XORCY   \blk00000443/blk00000455  (
    .CI(\blk00000443/sig00000679 ),
    .LI(\blk00000443/sig0000068b ),
    .O(\blk00000443/sig00000689 )
  );
  XORCY   \blk00000443/blk00000454  (
    .CI(\blk00000443/sig0000067b ),
    .LI(sig000003d7),
    .O(\blk00000443/sig00000688 )
  );
  MUXCY   \blk00000443/blk00000453  (
    .CI(\blk00000443/sig0000068a ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig00000692 ),
    .O(\blk00000443/sig00000687 )
  );
  XORCY   \blk00000443/blk00000452  (
    .CI(\blk00000443/sig0000068a ),
    .LI(\blk00000443/sig00000692 ),
    .O(\blk00000443/sig00000686 )
  );
  MUXCY   \blk00000443/blk00000451  (
    .CI(\blk00000443/sig00000687 ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig00000691 ),
    .O(\blk00000443/sig00000685 )
  );
  XORCY   \blk00000443/blk00000450  (
    .CI(\blk00000443/sig00000687 ),
    .LI(\blk00000443/sig00000691 ),
    .O(\blk00000443/sig00000684 )
  );
  MUXCY   \blk00000443/blk0000044f  (
    .CI(\blk00000443/sig00000685 ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig00000690 ),
    .O(\blk00000443/sig00000683 )
  );
  XORCY   \blk00000443/blk0000044e  (
    .CI(\blk00000443/sig00000685 ),
    .LI(\blk00000443/sig00000690 ),
    .O(\blk00000443/sig00000682 )
  );
  MUXCY   \blk00000443/blk0000044d  (
    .CI(\blk00000443/sig00000683 ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig0000068f ),
    .O(\blk00000443/sig00000681 )
  );
  XORCY   \blk00000443/blk0000044c  (
    .CI(\blk00000443/sig00000683 ),
    .LI(\blk00000443/sig0000068f ),
    .O(\blk00000443/sig00000680 )
  );
  MUXCY   \blk00000443/blk0000044b  (
    .CI(\blk00000443/sig00000681 ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig0000068e ),
    .O(\blk00000443/sig0000067f )
  );
  XORCY   \blk00000443/blk0000044a  (
    .CI(\blk00000443/sig00000681 ),
    .LI(\blk00000443/sig0000068e ),
    .O(\blk00000443/sig0000067e )
  );
  MUXCY   \blk00000443/blk00000449  (
    .CI(\blk00000443/sig0000067f ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig0000068d ),
    .O(\blk00000443/sig0000067d )
  );
  XORCY   \blk00000443/blk00000448  (
    .CI(\blk00000443/sig0000067f ),
    .LI(\blk00000443/sig0000068d ),
    .O(\blk00000443/sig0000067c )
  );
  MUXCY   \blk00000443/blk00000447  (
    .CI(\blk00000443/sig0000067d ),
    .DI(\blk00000443/sig00000679 ),
    .S(\blk00000443/sig0000068c ),
    .O(\blk00000443/sig0000067b )
  );
  XORCY   \blk00000443/blk00000446  (
    .CI(\blk00000443/sig0000067d ),
    .LI(\blk00000443/sig0000068c ),
    .O(\blk00000443/sig0000067a )
  );
  GND   \blk00000443/blk00000445  (
    .G(\blk00000443/sig00000679 )
  );
  VCC   \blk00000443/blk00000444  (
    .P(\blk00000443/sig00000678 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
