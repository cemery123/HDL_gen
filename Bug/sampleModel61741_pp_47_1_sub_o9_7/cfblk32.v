// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk32.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk32
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk32
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk32
          (clk,
           reset,
           enb,
           emi_180,
           Action_Port,
           emi_181,
           emi_182);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_180;  // uint8
  input   Action_Port;
  output  [7:0] emi_181;  // uint8
  output  [7:0] emi_182;  // uint8


  wire [7:0] cfblk32_out1;  // uint8
  wire [7:0] cfblk32_out2;  // uint8
  wire [7:0] cfblk32_out1_bypass;  // uint8
  reg [7:0] cfblk32_out1_last_value;  // uint8
  wire [7:0] cfblk32_out2_bypass;  // uint8
  reg [7:0] cfblk32_out2_last_value;  // uint8


  assign cfblk32_out1 = emi_180;
  assign cfblk32_out2 = 8'b00000000;



  always @(posedge clk or posedge reset)
    begin : emi_181_bypass_process
      if (reset == 1'b1) begin
        cfblk32_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk32_out1_last_value <= cfblk32_out1_bypass;
        end
      end
    end



  assign cfblk32_out1_bypass = (Action_Port == 1'b0 ? cfblk32_out1_last_value :
              cfblk32_out1);



  assign emi_181 = cfblk32_out1_bypass;

  always @(posedge clk or posedge reset)
    begin : emi_182_bypass_process
      if (reset == 1'b1) begin
        cfblk32_out2_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk32_out2_last_value <= cfblk32_out2_bypass;
        end
      end
    end



  assign cfblk32_out2_bypass = (Action_Port == 1'b0 ? cfblk32_out2_last_value :
              cfblk32_out2);



  assign emi_182 = cfblk32_out2_bypass;

endmodule  // cfblk32

