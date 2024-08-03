// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_3\slemi\emi_results\2024-05-22-23-05-26\SampleModel66206\Verilog_hdlsrc\sampleModel66206_pp_7_1_sub\cfblk168.v
// Created: 2024-05-22 23:12:28
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk168
// Source Path: sampleModel66206_pp_7_1_sub/Subsystem/cfblk168
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk168
          (clk,
           reset,
           enb,
           emi_90,
           Action_Port,
           emi_91);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_90;  // uint8
  input   Action_Port;
  output  [7:0] emi_91;  // uint8


  wire enb_gated;
  reg [7:0] cfblk168_reg [0:1];  // ufix8 [2]
  wire [7:0] cfblk168_reg_next [0:1];  // ufix8 [2]
  wire [7:0] cfblk168_out1;  // uint8
  wire [7:0] cfblk168_out1_1;  // uint8
  reg [7:0] cfblk168_out1_last_value;  // uint8
  reg signed [31:0] cfblk168_t_0_0;  // int32
  reg signed [31:0] cfblk168_t_1;  // int32


  assign enb_gated = Action_Port && enb;

  always @(posedge clk or posedge reset)
    begin : cfblk168_1_process
      if (reset == 1'b1) begin
        for(cfblk168_t_1 = 32'sd0; cfblk168_t_1 <= 32'sd1; cfblk168_t_1 = cfblk168_t_1 + 32'sd1) begin
          cfblk168_reg[cfblk168_t_1] <= 8'b00000000;
        end
      end
      else begin
        if (enb_gated) begin
          for(cfblk168_t_0_0 = 32'sd0; cfblk168_t_0_0 <= 32'sd1; cfblk168_t_0_0 = cfblk168_t_0_0 + 32'sd1) begin
            cfblk168_reg[cfblk168_t_0_0] <= cfblk168_reg_next[cfblk168_t_0_0];
          end
        end
      end
    end

  assign cfblk168_out1 = cfblk168_reg[1];
  assign cfblk168_reg_next[0] = emi_90;
  assign cfblk168_reg_next[1] = cfblk168_reg[0];



  always @(posedge clk or posedge reset)
    begin : out0_bypass_process
      if (reset == 1'b1) begin
        cfblk168_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb_gated) begin
          cfblk168_out1_last_value <= cfblk168_out1_1;
        end
      end
    end



  assign cfblk168_out1_1 = (Action_Port == 1'b0 ? cfblk168_out1_last_value :
              cfblk168_out1);



  assign emi_91 = cfblk168_out1_1;

endmodule  // cfblk168

