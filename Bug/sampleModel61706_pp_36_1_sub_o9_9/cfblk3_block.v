// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_9\slemi\emi_results\2024-05-23-02-49-52\SampleModel61706\Verilog_hdlsrc\sampleModel61706_pp_36_1_sub\cfblk3_block.v
// Created: 2024-05-23 03:39:09
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk3_block
// Source Path: sampleModel61706_pp_36_1_sub/Subsystem/cfblk3
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk3_block
          (clk,
           reset,
           enb,
           emi_155,
           Action_Port,
           emi_156);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_155;  // uint8
  input   Action_Port;
  output  [7:0] emi_156;  // uint8


  wire [7:0] cfblk3_out1;  // uint8
  wire [7:0] cfblk3_out1_bypass;  // uint8
  reg [7:0] cfblk3_out1_last_value;  // uint8


  cfblk3 u_cfblk3 (.u(emi_155),  // uint8
                   .y(cfblk3_out1)  // uint8
                   );

  always @(posedge clk or posedge reset)
    begin : emi_156_bypass_process
      if (reset == 1'b1) begin
        cfblk3_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk3_out1_last_value <= cfblk3_out1_bypass;
        end
      end
    end



  assign cfblk3_out1_bypass = (Action_Port == 1'b0 ? cfblk3_out1_last_value :
              cfblk3_out1);



  assign emi_156 = cfblk3_out1_bypass;

endmodule  // cfblk3_block

