// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_3\slemi\emi_results\2024-05-22-23-05-26\SampleModel66206\Verilog_hdlsrc\sampleModel66206_pp_7_1_sub\cfblk21_block.v
// Created: 2024-05-22 23:12:28
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk21_block
// Source Path: sampleModel66206_pp_7_1_sub/Subsystem/cfblk21
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk21_block
          (clk,
           reset,
           enb,
           emi_122,
           Action_Port,
           emi_123);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_122;  // uint8
  input   Action_Port;
  output  [7:0] emi_123;  // uint8


  wire [7:0] cfblk21_out1;  // uint8
  wire [7:0] cfblk21_out1_bypass;  // uint8
  reg [7:0] cfblk21_out1_last_value;  // uint8


  cfblk21 u_cfblk21 (.u(emi_122),  // uint8
                     .y(cfblk21_out1)  // uint8
                     );

  always @(posedge clk or posedge reset)
    begin : emi_123_bypass_process
      if (reset == 1'b1) begin
        cfblk21_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk21_out1_last_value <= cfblk21_out1_bypass;
        end
      end
    end



  assign cfblk21_out1_bypass = (Action_Port == 1'b0 ? cfblk21_out1_last_value :
              cfblk21_out1);



  assign emi_123 = cfblk21_out1_bypass;

endmodule  // cfblk21_block

