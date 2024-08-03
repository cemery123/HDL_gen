// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-35-36\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk63.v
// Created: 2024-05-23 05:41:31
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk63
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk63/cfblk63
// Hierarchy Level: 2
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk63
          (u,
           y);


  input   [7:0] u;  // uint8
  output  [7:0] y;  // uint8


  wire [7:0] FixPt_Constant_out1;  // uint8
  wire [7:0] FixPt_Sum1_out1;  // uint8


  assign FixPt_Constant_out1 = 8'b00000001;



  assign FixPt_Sum1_out1 = u + FixPt_Constant_out1;



  assign y = FixPt_Sum1_out1;

endmodule  // cfblk63

