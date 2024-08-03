// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-23-07-46-43\SampleModel61753\Verilog_hdlsrc\sampleModel61753_pp_45_1_sub\cfblk50.v
// Created: 2024-05-23 08:17:51
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk50
// Source Path: sampleModel61753_pp_45_1_sub/Subsystem/cfblk50
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk50
          (clk,
           reset,
           enb,
           emi_9,
           Action_Port,
           emi_10);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_9;  // uint8
  input   Action_Port;
  output  [7:0] emi_10;  // uint8


  wire [7:0] cfblk50_out1_bypass;  // uint8
  reg [7:0] cfblk50_out1_last_value;  // uint8


  always @(posedge clk or posedge reset)
    begin : emi_10_bypass_process
      if (reset == 1'b1) begin
        cfblk50_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk50_out1_last_value <= cfblk50_out1_bypass;
        end
      end
    end



  assign cfblk50_out1_bypass = (Action_Port == 1'b0 ? cfblk50_out1_last_value :
              emi_9);



  assign emi_10 = cfblk50_out1_bypass;

endmodule  // cfblk50

