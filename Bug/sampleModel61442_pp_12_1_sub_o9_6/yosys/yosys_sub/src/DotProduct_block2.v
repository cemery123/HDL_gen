// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-22-21-58-05\SampleModel61442\Verilog_hdlsrc\sampleModel61442_pp_12_1_sub\DotProduct_block2.v
// Created: 2024-05-22 22:32:08
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DotProduct_block2
// Source Path: sampleModel61442_pp_12_1_sub/Subsystem/DotProduct
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DotProduct_block2
          (in1,
           in2,
           out1);


  input   [7:0] in1;  // uint8
  input   [7:0] in2;  // uint8
  output  [7:0] out1;  // uint8


  wire [15:0] mul_cfblk25_dotp_mulcomp_mul_temp;  // ufix16


  assign mul_cfblk25_dotp_mulcomp_mul_temp = in1 * in2;
  assign out1 = mul_cfblk25_dotp_mulcomp_mul_temp[7:0];



endmodule  // DotProduct_block2

