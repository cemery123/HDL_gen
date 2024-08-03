// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-23-07-46-43\SampleModel61753\Verilog_hdlsrc\sampleModel61753_pp_45_1_sub\cfblk48_block.v
// Created: 2024-05-23 08:17:51
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk48_block
// Source Path: sampleModel61753_pp_45_1_sub/Subsystem/cfblk48
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk48_block
          (clk,
           reset,
           enb,
           emi_260,
           Action_Port,
           emi_261);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_260;  // uint8
  input   Action_Port;
  output  [7:0] emi_261;  // uint8


  wire [7:0] cfblk48_out1;  // uint8
  wire [7:0] cfblk48_out1_bypass;  // uint8
  reg [7:0] cfblk48_out1_last_value;  // uint8


  cfblk48 u_cfblk48 (.u(emi_260),  // uint8
                     .y(cfblk48_out1)  // uint8
                     );

  always @(posedge clk or posedge reset)
    begin : emi_261_bypass_process
      if (reset == 1'b1) begin
        cfblk48_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk48_out1_last_value <= cfblk48_out1_bypass;
        end
      end
    end



  assign cfblk48_out1_bypass = (Action_Port == 1'b0 ? cfblk48_out1_last_value :
              cfblk48_out1);



  assign emi_261 = cfblk48_out1_bypass;

endmodule  // cfblk48_block

