// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_10\slemi\emi_results\2024-05-23-02-20-21\SampleModel61556\Verilog_hdlsrc\sampleModel61556_pp_34_1_sub\cfblk111_block.v
// Created: 2024-05-23 02:55:47
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk111_block
// Source Path: sampleModel61556_pp_34_1_sub/Subsystem/cfblk111
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk111_block
          (clk,
           reset,
           enb,
           emi_25,
           Action_Port,
           emi_26);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_25;  // uint8
  input   Action_Port;
  output  [7:0] emi_26;  // uint8


  wire [7:0] cfblk111_out1;  // uint8
  wire [7:0] cfblk111_out1_bypass;  // uint8
  reg [7:0] cfblk111_out1_last_value;  // uint8


  cfblk111 u_cfblk111 (.u(emi_25),  // uint8
                       .y(cfblk111_out1)  // uint8
                       );

  always @(posedge clk or posedge reset)
    begin : emi_26_bypass_process
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



  assign emi_26 = cfblk111_out1_bypass;

endmodule  // cfblk111_block

