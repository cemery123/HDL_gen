// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk14.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk14
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk14
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk14
          (clk,
           reset,
           enb,
           emi_114,
           Action_Port,
           emi_115,
           emi_116);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_114;  // uint8
  input   Action_Port;
  output  [7:0] emi_115;  // uint8
  output  [7:0] emi_116;  // uint8


  wire [7:0] cfblk14_out1;  // uint8
  wire [7:0] cfblk14_out2;  // uint8
  wire [7:0] cfblk14_out1_bypass;  // uint8
  reg [7:0] cfblk14_out1_last_value;  // uint8
  wire [7:0] cfblk14_out2_bypass;  // uint8
  reg [7:0] cfblk14_out2_last_value;  // uint8


  assign cfblk14_out1 = emi_114;
  assign cfblk14_out2 = 8'b00000000;



  always @(posedge clk or posedge reset)
    begin : emi_115_bypass_process
      if (reset == 1'b1) begin
        cfblk14_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk14_out1_last_value <= cfblk14_out1_bypass;
        end
      end
    end



  assign cfblk14_out1_bypass = (Action_Port == 1'b0 ? cfblk14_out1_last_value :
              cfblk14_out1);



  assign emi_115 = cfblk14_out1_bypass;

  always @(posedge clk or posedge reset)
    begin : emi_116_bypass_process
      if (reset == 1'b1) begin
        cfblk14_out2_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk14_out2_last_value <= cfblk14_out2_bypass;
        end
      end
    end



  assign cfblk14_out2_bypass = (Action_Port == 1'b0 ? cfblk14_out2_last_value :
              cfblk14_out2);



  assign emi_116 = cfblk14_out2_bypass;

endmodule  // cfblk14

