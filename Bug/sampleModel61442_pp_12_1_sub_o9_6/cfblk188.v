// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-22-21-58-05\SampleModel61442\Verilog_hdlsrc\sampleModel61442_pp_12_1_sub\cfblk188.v
// Created: 2024-05-22 22:32:07
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk188
// Source Path: sampleModel61442_pp_12_1_sub/Subsystem/cfblk188
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk188
          (clk,
           reset,
           enb,
           emi_179,
           Action_Port,
           emi_180);


  input   clk;
  input   reset;
  input   enb;
  input   [15:0] emi_179;  // ufix16_En7
  input   Action_Port;
  output  [7:0] emi_180;  // uint8


  wire [7:0] cfblk188_out1;  // uint8
  wire [7:0] cfblk188_out1_bypass;  // uint8
  reg [7:0] cfblk188_out1_last_value;  // uint8


  assign cfblk188_out1 = emi_179[14:7];



  always @(posedge clk or posedge reset)
    begin : emi_180_bypass_process
      if (reset == 1'b1) begin
        cfblk188_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk188_out1_last_value <= cfblk188_out1_bypass;
        end
      end
    end



  assign cfblk188_out1_bypass = (Action_Port == 1'b0 ? cfblk188_out1_last_value :
              cfblk188_out1);



  assign emi_180 = cfblk188_out1_bypass;

endmodule  // cfblk188

