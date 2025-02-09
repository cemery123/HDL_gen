// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_10\slemi\emi_results\2024-05-23-02-20-21\SampleModel61556\Verilog_hdlsrc\sampleModel61556_pp_34_1_sub\cfblk36.v
// Created: 2024-05-23 02:55:47
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk36
// Source Path: sampleModel61556_pp_34_1_sub/Subsystem/cfblk36
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk36
          (clk,
           reset,
           enb,
           emi_179,
           Action_Port,
           emi_180);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_179;  // uint8
  input   Action_Port;
  output  [7:0] emi_180;  // uint8


  wire [7:0] cfblk36_const_val_1;  // uint8
  wire [7:0] cfblk36_out1;  // uint8
  wire [7:0] cfblk36_out1_bypass;  // uint8
  reg [7:0] cfblk36_out1_last_value;  // uint8


  assign cfblk36_const_val_1 = 8'b00000000;



  assign cfblk36_out1 = emi_179 + cfblk36_const_val_1;



  always @(posedge clk or posedge reset)
    begin : emi_180_bypass_process
      if (reset == 1'b1) begin
        cfblk36_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk36_out1_last_value <= cfblk36_out1_bypass;
        end
      end
    end



  assign cfblk36_out1_bypass = (Action_Port == 1'b0 ? cfblk36_out1_last_value :
              cfblk36_out1);



  assign emi_180 = cfblk36_out1_bypass;

endmodule  // cfblk36

