// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_7\slemi\emi_results\2024-05-23-08-02-25\SampleModel61741\Verilog_hdlsrc\sampleModel61741_pp_47_1_sub\cfblk103.v
// Created: 2024-05-23 08:43:24
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk103
// Source Path: sampleModel61741_pp_47_1_sub/Subsystem/cfblk103
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk103
          (clk,
           reset,
           enb,
           emi_1,
           Action_Port,
           emi_2);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_1;  // uint8
  input   Action_Port;
  output  [7:0] emi_2;  // uint8


  wire [7:0] cfblk103_const_val_1;  // uint8
  wire [7:0] cfblk103_out1;  // uint8
  wire [7:0] cfblk103_out1_bypass;  // uint8
  reg [7:0] cfblk103_out1_last_value;  // uint8


  assign cfblk103_const_val_1 = 8'b00000000;



  assign cfblk103_out1 = emi_1 + cfblk103_const_val_1;



  always @(posedge clk or posedge reset)
    begin : emi_2_bypass_process
      if (reset == 1'b1) begin
        cfblk103_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk103_out1_last_value <= cfblk103_out1_bypass;
        end
      end
    end



  assign cfblk103_out1_bypass = (Action_Port == 1'b0 ? cfblk103_out1_last_value :
              cfblk103_out1);



  assign emi_2 = cfblk103_out1_bypass;

endmodule  // cfblk103

