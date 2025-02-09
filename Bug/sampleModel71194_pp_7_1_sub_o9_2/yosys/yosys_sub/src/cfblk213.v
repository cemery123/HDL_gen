// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-35-36\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk213.v
// Created: 2024-05-23 05:41:31
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk213
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk213
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk213
          (clk,
           reset,
           enb,
           emi_172,
           Action_Port,
           emi_173);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_172;  // uint8
  input   Action_Port;
  output  emi_173;


  wire cfblk213_out1;
  wire cfblk213_out1_bypass;
  reg  cfblk213_out1_last_value;


  assign cfblk213_out1 = (emi_172 != 8'b00000000 ? 1'b1 :
              1'b0);



  always @(posedge clk or posedge reset)
    begin : emi_173_bypass_process
      if (reset == 1'b1) begin
        cfblk213_out1_last_value <= 1'b0;
      end
      else begin
        if (enb) begin
          cfblk213_out1_last_value <= cfblk213_out1_bypass;
        end
      end
    end



  assign cfblk213_out1_bypass = (Action_Port == 1'b0 ? cfblk213_out1_last_value :
              cfblk213_out1);



  assign emi_173 = cfblk213_out1_bypass;

endmodule  // cfblk213

