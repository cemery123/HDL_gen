// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-35-36\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\DotProduct_block3.v
// Created: 2024-05-23 05:41:31
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DotProduct_block3
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/DotProduct
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DotProduct_block3
          (in1,
           in2,
           out1);


  input   [7:0] in1;  // uint8
  input   [7:0] in2;  // uint8
  output  [7:0] out1;  // uint8


  wire [15:0] mul_cfblk134_dotp_mulcomp_mul_temp;  // ufix16


  assign mul_cfblk134_dotp_mulcomp_mul_temp = in1 * in2;
  assign out1 = mul_cfblk134_dotp_mulcomp_mul_temp[7:0];



endmodule  // DotProduct_block3

