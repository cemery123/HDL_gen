// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-23-07-46-43\SampleModel61753\Verilog_hdlsrc\sampleModel61753_pp_45_1_sub\Positive.v
// Created: 2024-05-23 08:17:51
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Positive
// Source Path: sampleModel61753_pp_45_1_sub/Subsystem/cfblk2/Positive
// Hierarchy Level: 2
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Positive
          (u,
           y);


  input   [7:0] u;  // uint8
  output  y;


  wire [7:0] Constant_out1;  // uint8
  wire Compare_relop1;


  assign Constant_out1 = 8'b00000000;



  assign Compare_relop1 = u > Constant_out1;



  assign y = Compare_relop1;

endmodule  // Positive

