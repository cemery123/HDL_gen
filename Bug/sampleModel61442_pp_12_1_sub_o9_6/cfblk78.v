// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-22-21-58-05\SampleModel61442\Verilog_hdlsrc\sampleModel61442_pp_12_1_sub\cfblk78.v
// Created: 2024-05-22 22:32:08
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk78
// Source Path: sampleModel61442_pp_12_1_sub/Subsystem/cfblk78
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk78
          (clk,
           reset,
           enb,
           emi_131,
           Action_Port,
           emi_132);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_131;  // uint8
  input   Action_Port;
  output  [7:0] emi_132;  // uint8


  wire [7:0] cfblk78_out1;  // uint8
  wire [7:0] cfblk78_out1_bypass;  // uint8
  reg [7:0] cfblk78_out1_last_value;  // uint8


  assign cfblk78_out1 = (emi_131 > 8'b00000000 ? 8'b00000001 :
              8'b00000000);



  always @(posedge clk or posedge reset)
    begin : emi_132_bypass_process
      if (reset == 1'b1) begin
        cfblk78_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk78_out1_last_value <= cfblk78_out1_bypass;
        end
      end
    end



  assign cfblk78_out1_bypass = (Action_Port == 1'b0 ? cfblk78_out1_last_value :
              cfblk78_out1);



  assign emi_132 = cfblk78_out1_bypass;

endmodule  // cfblk78

