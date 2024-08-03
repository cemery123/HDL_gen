// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk12.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk12
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk12
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk12
          (clk,
           reset,
           enb,
           emi_34,
           Action_Port,
           emi_35);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_34;  // uint8
  input   Action_Port;
  output  [7:0] emi_35;  // uint8


  wire [7:0] cfblk12_const_val_1;  // uint8
  wire [7:0] cfblk12_out1;  // uint8
  wire [7:0] cfblk12_out1_bypass;  // uint8
  reg [7:0] cfblk12_out1_last_value;  // uint8


  assign cfblk12_const_val_1 = 8'b00000000;



  assign cfblk12_out1 = emi_34 + cfblk12_const_val_1;



  always @(posedge clk or posedge reset)
    begin : emi_35_bypass_process
      if (reset == 1'b1) begin
        cfblk12_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk12_out1_last_value <= cfblk12_out1_bypass;
        end
      end
    end



  assign cfblk12_out1_bypass = (Action_Port == 1'b0 ? cfblk12_out1_last_value :
              cfblk12_out1);



  assign emi_35 = cfblk12_out1_bypass;

endmodule  // cfblk12

