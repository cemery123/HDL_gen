// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk64.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk64
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk64
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk64
          (clk,
           reset,
           enb,
           emi_280,
           Action_Port,
           emi_281);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_280;  // uint8
  input   Action_Port;
  output  [7:0] emi_281;  // uint8


  wire [7:0] cfblk64_out1_bypass;  // uint8
  reg [7:0] cfblk64_out1_last_value;  // uint8


  always @(posedge clk or posedge reset)
    begin : emi_281_bypass_process
      if (reset == 1'b1) begin
        cfblk64_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk64_out1_last_value <= cfblk64_out1_bypass;
        end
      end
    end



  assign cfblk64_out1_bypass = (Action_Port == 1'b0 ? cfblk64_out1_last_value :
              emi_280);



  assign emi_281 = cfblk64_out1_bypass;

endmodule  // cfblk64

