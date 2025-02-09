// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_10\slemi\emi_results\2024-05-23-02-20-21\SampleModel61556\Verilog_hdlsrc\sampleModel61556_pp_34_1_sub\cfblk191.v
// Created: 2024-05-23 02:55:47
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk191
// Source Path: sampleModel61556_pp_34_1_sub/Subsystem/cfblk191
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk191
          (clk,
           reset,
           enb,
           emi_115,
           Action_Port,
           emi_116);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_115;  // uint8
  input   Action_Port;
  output  [7:0] emi_116;  // uint8


  wire enb_gated;
  reg [7:0] cfblk191_reg [0:1];  // ufix8 [2]
  wire [7:0] cfblk191_reg_next [0:1];  // ufix8 [2]
  wire [7:0] cfblk191_out1;  // uint8
  wire [7:0] cfblk191_out1_1;  // uint8
  reg [7:0] cfblk191_out1_last_value;  // uint8
  reg signed [31:0] cfblk191_t_0_0;  // int32
  reg signed [31:0] cfblk191_t_1;  // int32


  assign enb_gated = Action_Port && enb;

  always @(posedge clk or posedge reset)
    begin : cfblk191_1_process
      if (reset == 1'b1) begin
        for(cfblk191_t_1 = 32'sd0; cfblk191_t_1 <= 32'sd1; cfblk191_t_1 = cfblk191_t_1 + 32'sd1) begin
          cfblk191_reg[cfblk191_t_1] <= 8'b00000000;
        end
      end
      else begin
        if (enb_gated) begin
          for(cfblk191_t_0_0 = 32'sd0; cfblk191_t_0_0 <= 32'sd1; cfblk191_t_0_0 = cfblk191_t_0_0 + 32'sd1) begin
            cfblk191_reg[cfblk191_t_0_0] <= cfblk191_reg_next[cfblk191_t_0_0];
          end
        end
      end
    end

  assign cfblk191_out1 = cfblk191_reg[1];
  assign cfblk191_reg_next[0] = emi_115;
  assign cfblk191_reg_next[1] = cfblk191_reg[0];



  always @(posedge clk or posedge reset)
    begin : out0_bypass_process
      if (reset == 1'b1) begin
        cfblk191_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb_gated) begin
          cfblk191_out1_last_value <= cfblk191_out1_1;
        end
      end
    end



  assign cfblk191_out1_1 = (Action_Port == 1'b0 ? cfblk191_out1_last_value :
              cfblk191_out1);



  assign emi_116 = cfblk191_out1_1;

endmodule  // cfblk191

