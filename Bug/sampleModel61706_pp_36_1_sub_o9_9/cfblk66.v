// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_9\slemi\emi_results\2024-05-23-02-49-52\SampleModel61706\Verilog_hdlsrc\sampleModel61706_pp_36_1_sub\cfblk66.v
// Created: 2024-05-23 03:39:10
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk66
// Source Path: sampleModel61706_pp_36_1_sub/Subsystem/cfblk66
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk66
          (clk,
           reset,
           enb,
           emi_227,
           Action_Port,
           emi_228);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_227;  // uint8
  input   Action_Port;
  output  [7:0] emi_228;  // uint8


  wire [7:0] dtc_out;  // ufix8
  wire [7:0] cfblk66_out1;  // uint8
  wire [7:0] cfblk66_out1_bypass;  // uint8
  reg [7:0] cfblk66_out1_last_value;  // uint8


  assign dtc_out = emi_227;



  assign cfblk66_out1 = dtc_out;



  always @(posedge clk or posedge reset)
    begin : emi_228_bypass_process
      if (reset == 1'b1) begin
        cfblk66_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk66_out1_last_value <= cfblk66_out1_bypass;
        end
      end
    end



  assign cfblk66_out1_bypass = (Action_Port == 1'b0 ? cfblk66_out1_last_value :
              cfblk66_out1);



  assign emi_228 = cfblk66_out1_bypass;

endmodule  // cfblk66

