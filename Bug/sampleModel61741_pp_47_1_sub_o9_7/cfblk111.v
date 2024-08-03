// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk111.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk111
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk111
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk111
          (clk,
           reset,
           enb,
           emi_155,
           Action_Port,
           emi_156,
           emi_157);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_155;  // uint8
  input   Action_Port;
  output  [7:0] emi_156;  // uint8
  output  [7:0] emi_157;  // uint8


  wire [7:0] cfblk111_out1;  // uint8
  wire [7:0] cfblk111_out2;  // uint8
  wire [7:0] cfblk111_out1_bypass;  // uint8
  reg [7:0] cfblk111_out1_last_value;  // uint8
  wire [7:0] cfblk111_out2_bypass;  // uint8
  reg [7:0] cfblk111_out2_last_value;  // uint8


  assign cfblk111_out1 = emi_155;
  assign cfblk111_out2 = 8'b00000000;



  always @(posedge clk or posedge reset)
    begin : emi_156_bypass_process
      if (reset == 1'b1) begin
        cfblk111_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk111_out1_last_value <= cfblk111_out1_bypass;
        end
      end
    end



  assign cfblk111_out1_bypass = (Action_Port == 1'b0 ? cfblk111_out1_last_value :
              cfblk111_out1);



  assign emi_156 = cfblk111_out1_bypass;

  always @(posedge clk or posedge reset)
    begin : emi_157_bypass_process
      if (reset == 1'b1) begin
        cfblk111_out2_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk111_out2_last_value <= cfblk111_out2_bypass;
        end
      end
    end



  assign cfblk111_out2_bypass = (Action_Port == 1'b0 ? cfblk111_out2_last_value :
              cfblk111_out2);



  assign emi_157 = cfblk111_out2_bypass;

endmodule  // cfblk111

