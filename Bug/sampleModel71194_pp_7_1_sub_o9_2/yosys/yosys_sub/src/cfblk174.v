// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_2\slemi\emi_results\2024-05-23-05-35-36\SampleModel71194\Verilog_hdlsrc\sampleModel71194_pp_7_1_sub\cfblk174.v
// Created: 2024-05-23 05:41:31
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk174
// Source Path: sampleModel71194_pp_7_1_sub/Subsystem/cfblk174
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk174
          (clk,
           reset,
           enb,
           emi_75,
           Action_Port,
           emi_76);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_75;  // uint8
  input   Action_Port;
  output  [7:0] emi_76;  // uint8


  wire enb_gated;
  reg [7:0] cfblk174_reg [0:1];  // ufix8 [2]
  wire [7:0] cfblk174_reg_next [0:1];  // ufix8 [2]
  wire [7:0] cfblk174_out1;  // uint8
  wire [7:0] cfblk174_out1_1;  // uint8
  reg [7:0] cfblk174_out1_last_value;  // uint8
  reg signed [31:0] cfblk174_t_0_0;  // int32
  reg signed [31:0] cfblk174_t_1;  // int32


  assign enb_gated = Action_Port && enb;

  always @(posedge clk or posedge reset)
    begin : cfblk174_1_process
      if (reset == 1'b1) begin
        for(cfblk174_t_1 = 32'sd0; cfblk174_t_1 <= 32'sd1; cfblk174_t_1 = cfblk174_t_1 + 32'sd1) begin
          cfblk174_reg[cfblk174_t_1] <= 8'b00000000;
        end
      end
      else begin
        if (enb_gated) begin
          for(cfblk174_t_0_0 = 32'sd0; cfblk174_t_0_0 <= 32'sd1; cfblk174_t_0_0 = cfblk174_t_0_0 + 32'sd1) begin
            cfblk174_reg[cfblk174_t_0_0] <= cfblk174_reg_next[cfblk174_t_0_0];
          end
        end
      end
    end

  assign cfblk174_out1 = cfblk174_reg[1];
  assign cfblk174_reg_next[0] = emi_75;
  assign cfblk174_reg_next[1] = cfblk174_reg[0];



  always @(posedge clk or posedge reset)
    begin : out0_bypass_process
      if (reset == 1'b1) begin
        cfblk174_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb_gated) begin
          cfblk174_out1_last_value <= cfblk174_out1_1;
        end
      end
    end



  assign cfblk174_out1_1 = (Action_Port == 1'b0 ? cfblk174_out1_last_value :
              cfblk174_out1);



  assign emi_76 = cfblk174_out1_1;

endmodule  // cfblk174

