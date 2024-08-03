// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-22-55\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk71.v
// Created: 2024-05-23 05:31:58
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk71
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk71
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk71
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


  wire [7:0] cfblk71_const_val_1;  // uint8
  wire [7:0] cfblk71_out1;  // uint8
  wire [7:0] cfblk71_out1_bypass;  // uint8
  reg [7:0] cfblk71_out1_last_value;  // uint8


  assign cfblk71_const_val_1 = 8'b00000000;



  assign cfblk71_out1 = emi_1 + cfblk71_const_val_1;



  always @(posedge clk or posedge reset)
    begin : emi_2_bypass_process
      if (reset == 1'b1) begin
        cfblk71_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk71_out1_last_value <= cfblk71_out1_bypass;
        end
      end
    end



  assign cfblk71_out1_bypass = (Action_Port == 1'b0 ? cfblk71_out1_last_value :
              cfblk71_out1);



  assign emi_2 = cfblk71_out1_bypass;

endmodule  // cfblk71

