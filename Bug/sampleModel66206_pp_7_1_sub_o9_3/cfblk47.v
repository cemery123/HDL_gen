// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_3\slemi\emi_results\2024-05-22-23-05-26\SampleModel66206\Verilog_hdlsrc\sampleModel66206_pp_7_1_sub\cfblk47.v
// Created: 2024-05-22 23:12:28
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk47
// Source Path: sampleModel66206_pp_7_1_sub/Subsystem/cfblk47
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk47
          (clk,
           reset,
           enb,
           emi_186,
           Action_Port,
           emi_187);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_186;  // uint8
  input   Action_Port;
  output  [7:0] emi_187;  // uint8


  wire [7:0] dtc_out;  // ufix8
  wire [7:0] cfblk47_out1;  // uint8
  wire [7:0] cfblk47_out1_bypass;  // uint8
  reg [7:0] cfblk47_out1_last_value;  // uint8


  assign dtc_out = emi_186;



  assign cfblk47_out1 = dtc_out;



  always @(posedge clk or posedge reset)
    begin : emi_187_bypass_process
      if (reset == 1'b1) begin
        cfblk47_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk47_out1_last_value <= cfblk47_out1_bypass;
        end
      end
    end



  assign cfblk47_out1_bypass = (Action_Port == 1'b0 ? cfblk47_out1_last_value :
              cfblk47_out1);



  assign emi_187 = cfblk47_out1_bypass;

endmodule  // cfblk47

