// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-35-36\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk133.v
// Created: 2024-05-23 05:41:31
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk133
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk133
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk133
          (clk,
           reset,
           enb,
           emi_51,
           Action_Port,
           emi_52);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_51;  // uint8
  input   Action_Port;
  output  [7:0] emi_52;  // uint8


  wire [7:0] cfblk133_out1;  // uint8
  wire [7:0] cfblk133_out1_bypass;  // uint8
  reg [7:0] cfblk133_out1_last_value;  // uint8


  assign cfblk133_out1 = (emi_51 > 8'b00000000 ? 8'b00000001 :
              8'b00000000);



  always @(posedge clk or posedge reset)
    begin : emi_52_bypass_process
      if (reset == 1'b1) begin
        cfblk133_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk133_out1_last_value <= cfblk133_out1_bypass;
        end
      end
    end



  assign cfblk133_out1_bypass = (Action_Port == 1'b0 ? cfblk133_out1_last_value :
              cfblk133_out1);



  assign emi_52 = cfblk133_out1_bypass;

endmodule  // cfblk133

