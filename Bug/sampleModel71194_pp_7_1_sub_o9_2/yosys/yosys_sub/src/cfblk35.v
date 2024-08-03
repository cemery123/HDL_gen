// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-22-55\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk35.v
// Created: 2024-05-23 05:31:58
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk35
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk35
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk35
          (clk,
           reset,
           enb,
           emi_187,
           Action_Port,
           emi_188);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_187;  // uint8
  input   Action_Port;
  output  [7:0] emi_188;  // uint8


  wire [7:0] cfblk35_out1_bypass;  // uint8
  reg [7:0] cfblk35_out1_last_value;  // uint8


  always @(posedge clk or posedge reset)
    begin : emi_188_bypass_process
      if (reset == 1'b1) begin
        cfblk35_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk35_out1_last_value <= cfblk35_out1_bypass;
        end
      end
    end



  assign cfblk35_out1_bypass = (Action_Port == 1'b0 ? cfblk35_out1_last_value :
              emi_187);



  assign emi_188 = cfblk35_out1_bypass;

endmodule  // cfblk35

