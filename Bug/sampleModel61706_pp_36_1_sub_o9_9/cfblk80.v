// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_9\slemi\emi_results\2024-05-23-02-49-52\SampleModel61706\Verilog_hdlsrc\sampleModel61706_pp_36_1_sub\cfblk80.v
// Created: 2024-05-23 03:39:10
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk80
// Source Path: sampleModel61706_pp_36_1_sub/Subsystem/cfblk80
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk80
          (u,
           y);


  input   [7:0] u;  // uint8
  output  [7:0] y;  // uint8


  wire [7:0] FixPt_Constant_out1;  // uint8
  wire [7:0] FixPt_Sum1_out1;  // uint8


  assign FixPt_Constant_out1 = 8'b00000001;



  assign FixPt_Sum1_out1 = u + FixPt_Constant_out1;



  assign y = FixPt_Sum1_out1;

endmodule  // cfblk80

