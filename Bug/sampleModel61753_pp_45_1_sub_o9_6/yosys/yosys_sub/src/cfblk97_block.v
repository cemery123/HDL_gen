// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-23-07-46-43\SampleModel61753\Verilog_hdlsrc\sampleModel61753_pp_45_1_sub\cfblk97_block.v
// Created: 2024-05-23 08:17:51
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk97_block
// Source Path: sampleModel61753_pp_45_1_sub/Subsystem/cfblk97
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk97_block
          (clk,
           reset,
           enb,
           emi_342,
           Action_Port,
           emi_343);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_342;  // uint8
  input   Action_Port;
  output  [7:0] emi_343;  // uint8


  wire [7:0] cfblk97_out1;  // uint8
  wire [7:0] cfblk97_out1_bypass;  // uint8
  reg [7:0] cfblk97_out1_last_value;  // uint8


  cfblk97 u_cfblk97 (.u(emi_342),  // uint8
                     .y(cfblk97_out1)  // uint8
                     );

  always @(posedge clk or posedge reset)
    begin : emi_343_bypass_process
      if (reset == 1'b1) begin
        cfblk97_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk97_out1_last_value <= cfblk97_out1_bypass;
        end
      end
    end



  assign cfblk97_out1_bypass = (Action_Port == 1'b0 ? cfblk97_out1_last_value :
              cfblk97_out1);



  assign emi_343 = cfblk97_out1_bypass;

endmodule  // cfblk97_block

