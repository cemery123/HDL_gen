// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-22-21-58-05\SampleModel61442\Verilog_hdlsrc\sampleModel61442_pp_12_1_sub\cfblk28_block.v
// Created: 2024-05-22 22:32:07
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk28_block
// Source Path: sampleModel61442_pp_12_1_sub/Subsystem/cfblk28
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk28_block
          (clk,
           reset,
           enb,
           emi_195,
           Action_Port,
           emi_196);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_195;  // uint8
  input   Action_Port;
  output  [7:0] emi_196;  // uint8


  wire [7:0] cfblk28_out1;  // uint8
  wire [7:0] cfblk28_out1_bypass;  // uint8
  reg [7:0] cfblk28_out1_last_value;  // uint8


  cfblk28 u_cfblk28 (.u(emi_195),  // uint8
                     .y(cfblk28_out1)  // uint8
                     );

  always @(posedge clk or posedge reset)
    begin : emi_196_bypass_process
      if (reset == 1'b1) begin
        cfblk28_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk28_out1_last_value <= cfblk28_out1_bypass;
        end
      end
    end



  assign cfblk28_out1_bypass = (Action_Port == 1'b0 ? cfblk28_out1_last_value :
              cfblk28_out1);



  assign emi_196 = cfblk28_out1_bypass;

endmodule  // cfblk28_block

