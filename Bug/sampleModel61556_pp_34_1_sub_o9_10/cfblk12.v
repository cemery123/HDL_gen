// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_10\slemi\emi_results\2024-05-23-02-20-21\SampleModel61556\Verilog_hdlsrc\sampleModel61556_pp_34_1_sub\cfblk12.v
// Created: 2024-05-23 02:55:47
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk12
// Source Path: sampleModel61556_pp_34_1_sub/Subsystem/cfblk12
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk12
          (clk,
           reset,
           enb,
           emi_58,
           Action_Port,
           emi_59);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_58;  // uint8
  input   Action_Port;
  output  [7:0] emi_59;  // uint8


  wire [7:0] dtc_out;  // ufix8
  wire [7:0] cfblk12_out1;  // uint8
  wire [7:0] cfblk12_out1_bypass;  // uint8
  reg [7:0] cfblk12_out1_last_value;  // uint8


  assign dtc_out = emi_58;



  assign cfblk12_out1 = dtc_out;



  always @(posedge clk or posedge reset)
    begin : emi_59_bypass_process
      if (reset == 1'b1) begin
        cfblk12_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk12_out1_last_value <= cfblk12_out1_bypass;
        end
      end
    end



  assign cfblk12_out1_bypass = (Action_Port == 1'b0 ? cfblk12_out1_last_value :
              cfblk12_out1);



  assign emi_59 = cfblk12_out1_bypass;

endmodule  // cfblk12

