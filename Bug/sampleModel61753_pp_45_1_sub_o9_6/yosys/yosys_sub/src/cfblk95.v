// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_6\slemi\emi_results\2024-05-23-07-46-43\SampleModel61753\Verilog_hdlsrc\sampleModel61753_pp_45_1_sub\cfblk95.v
// Created: 2024-05-23 08:17:51
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk95
// Source Path: sampleModel61753_pp_45_1_sub/Subsystem/cfblk95
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk95
          (clk,
           reset,
           enb,
           emi_334,
           Action_Port,
           emi_335);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_334;  // uint8
  input   Action_Port;
  output  [7:0] emi_335;  // uint8


  wire [7:0] cfblk95_const_val_1;  // uint8
  wire [7:0] cfblk95_out1;  // uint8
  wire [7:0] cfblk95_out1_bypass;  // uint8
  reg [7:0] cfblk95_out1_last_value;  // uint8


  assign cfblk95_const_val_1 = 8'b00000000;



  assign cfblk95_out1 = emi_334 + cfblk95_const_val_1;



  always @(posedge clk or posedge reset)
    begin : emi_335_bypass_process
      if (reset == 1'b1) begin
        cfblk95_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk95_out1_last_value <= cfblk95_out1_bypass;
        end
      end
    end



  assign cfblk95_out1_bypass = (Action_Port == 1'b0 ? cfblk95_out1_last_value :
              cfblk95_out1);



  assign emi_335 = cfblk95_out1_bypass;

endmodule  // cfblk95

