// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_9\slemi\emi_results\2024-05-23-02-49-52\SampleModel61706\Verilog_hdlsrc\sampleModel61706_pp_36_1_sub\cfblk155.v
// Created: 2024-05-23 03:39:09
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk155
// Source Path: sampleModel61706_pp_36_1_sub/Subsystem/cfblk155
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk155
          (clk,
           reset,
           enb,
           emi_82,
           Action_Port,
           emi_83);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_82;  // uint8
  input   Action_Port;
  output  [7:0] emi_83;  // uint8


  wire [7:0] cfblk155_out1;  // uint8
  wire [7:0] cfblk155_out1_bypass;  // uint8
  reg [7:0] cfblk155_out1_last_value;  // uint8


  assign cfblk155_out1 = (emi_82 > 8'b00000000 ? 8'b00000001 :
              8'b00000000);



  always @(posedge clk or posedge reset)
    begin : emi_83_bypass_process
      if (reset == 1'b1) begin
        cfblk155_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk155_out1_last_value <= cfblk155_out1_bypass;
        end
      end
    end



  assign cfblk155_out1_bypass = (Action_Port == 1'b0 ? cfblk155_out1_last_value :
              cfblk155_out1);



  assign emi_83 = cfblk155_out1_bypass;

endmodule  // cfblk155

