// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk65.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk65
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk65/cfblk65
// Hierarchy Level: 2
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk65
          (u,
           y);


  input   [7:0] u;  // uint8
  output  [7:0] y;  // uint8


  wire [7:0] FixPt_Constant_out1;  // uint8
  wire [7:0] FixPt_Sum1_out1;  // uint8


  assign FixPt_Constant_out1 = 8'b00000001;



  assign FixPt_Sum1_out1 = u + FixPt_Constant_out1;



  assign y = FixPt_Sum1_out1;

endmodule  // cfblk65

