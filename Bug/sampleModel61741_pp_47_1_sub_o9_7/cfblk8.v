// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk8.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk8
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk8
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk8
          (clk,
           reset,
           enb,
           emi_328,
           Action_Port,
           emi_329);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_328;  // uint8
  input   Action_Port;
  output  [7:0] emi_329;  // uint8


  wire [7:0] dtc_out;  // ufix8
  wire [7:0] cfblk8_out1;  // uint8
  wire [7:0] cfblk8_out1_bypass;  // uint8
  reg [7:0] cfblk8_out1_last_value;  // uint8


  assign dtc_out = emi_328;



  assign cfblk8_out1 = dtc_out;



  always @(posedge clk or posedge reset)
    begin : emi_329_bypass_process
      if (reset == 1'b1) begin
        cfblk8_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk8_out1_last_value <= cfblk8_out1_bypass;
        end
      end
    end



  assign cfblk8_out1_bypass = (Action_Port == 1'b0 ? cfblk8_out1_last_value :
              cfblk8_out1);



  assign emi_329 = cfblk8_out1_bypass;

endmodule  // cfblk8

