// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_3\slemi\emi_results\2024-05-22-23-05-26\SampleModel66206\Verilog_hdlsrc\sampleModel66206_pp_7_1_sub\cfblk123.v
// Created: 2024-05-22 23:12:28
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk123
// Source Path: sampleModel66206_pp_7_1_sub/Subsystem/cfblk123
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk123
          (clk,
           reset,
           enb,
           emi_18,
           Action_Port,
           emi_19);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_18;  // uint8
  input   Action_Port;
  output  [15:0] emi_19;  // ufix16_En7


  wire [15:0] cfblk123_out1;  // ufix16_En7
  wire [15:0] cfblk123_out1_bypass;  // ufix16_En7
  reg [15:0] cfblk123_out1_last_value;  // ufix16_En7


  assign cfblk123_out1 = {1'b0, {emi_18, 7'b0000000}};



  always @(posedge clk or posedge reset)
    begin : emi_19_bypass_process
      if (reset == 1'b1) begin
        cfblk123_out1_last_value <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          cfblk123_out1_last_value <= cfblk123_out1_bypass;
        end
      end
    end



  assign cfblk123_out1_bypass = (Action_Port == 1'b0 ? cfblk123_out1_last_value :
              cfblk123_out1);



  assign emi_19 = cfblk123_out1_bypass;

endmodule  // cfblk123

