// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-22-21-58-05\SampleModel61442\Verilog_hdlsrc\sampleModel61442_pp_12_1_sub\cfblk110.v
// Created: 2024-05-22 22:32:07
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk110
// Source Path: sampleModel61442_pp_12_1_sub/Subsystem/cfblk110
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk110
          (clk,
           reset,
           enb,
           emi_50,
           Action_Port,
           emi_51);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_50;  // uint8
  input   Action_Port;
  output  [15:0] emi_51;  // ufix16_En7


  wire [15:0] cfblk110_out1;  // ufix16_En7
  wire [15:0] cfblk110_out1_bypass;  // ufix16_En7
  reg [15:0] cfblk110_out1_last_value;  // ufix16_En7


  assign cfblk110_out1 = {1'b0, {emi_50, 7'b0000000}};



  always @(posedge clk or posedge reset)
    begin : emi_51_bypass_process
      if (reset == 1'b1) begin
        cfblk110_out1_last_value <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          cfblk110_out1_last_value <= cfblk110_out1_bypass;
        end
      end
    end



  assign cfblk110_out1_bypass = (Action_Port == 1'b0 ? cfblk110_out1_last_value :
              cfblk110_out1);



  assign emi_51 = cfblk110_out1_bypass;

endmodule  // cfblk110

