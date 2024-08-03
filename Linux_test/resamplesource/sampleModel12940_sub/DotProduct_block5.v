// -------------------------------------------------------------
// 
// File Name: D:\slsf_randgen\slsf\reportsneo\2024-03-07-15-43-51\Verilog_hdlsrc\sampleModel12940_sub\DotProduct_block5.v
// Created: 2024-03-08 13:13:54
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DotProduct_block5
// Source Path: sampleModel12940_sub/Subsystem/DotProduct
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DotProduct_block5
          (in1,
           in2,
           out1);


  input   [7:0] in1;  // uint8
  input   [7:0] in2;  // uint8
  output  [7:0] out1;  // uint8


  wire [15:0] mul_cfblk81_dotp_mulcomp_mul_temp;  // ufix16


  assign mul_cfblk81_dotp_mulcomp_mul_temp = in1 * in2;
  assign out1 = mul_cfblk81_dotp_mulcomp_mul_temp[7:0];



endmodule  // DotProduct_block5

