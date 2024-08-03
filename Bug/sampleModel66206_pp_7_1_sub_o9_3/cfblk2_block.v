// -------------------------------------------------------------
// 
// File Name: E:\zgl\gen_3\slemi\emi_results\2024-05-22-23-05-26\SampleModel66206\Verilog_hdlsrc\sampleModel66206_pp_7_1_sub\cfblk2_block.v
// Created: 2024-05-22 23:12:28
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: cfblk2_block
// Source Path: sampleModel66206_pp_7_1_sub/Subsystem/cfblk2
// Hierarchy Level: 1
// Model version: 1.1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module cfblk2_block
          (clk,
           reset,
           enb,
           emi_194,
           Action_Port,
           emi_195);


  input   clk;
  input   reset;
  input   enb;
  input   [7:0] emi_194;  // uint8
  input   Action_Port;
  output  [7:0] emi_195;  // uint8


  wire [7:0] cfblk2_out1;  // uint8
  wire [7:0] cfblk2_out1_bypass;  // uint8
  reg [7:0] cfblk2_out1_last_value;  // uint8


  cfblk2 u_cfblk2 (.clk(clk),
                   .reset(reset),
                   .enb(enb),
                   .U(emi_194),  // uint8
                   .Action_Port_out2(Action_Port),
                   .Y(cfblk2_out1)  // uint8
                   );

  always @(posedge clk or posedge reset)
    begin : emi_195_bypass_process
      if (reset == 1'b1) begin
        cfblk2_out1_last_value <= 8'b00000000;
      end
      else begin
        if (enb) begin
          cfblk2_out1_last_value <= cfblk2_out1_bypass;
        end
      end
    end



  assign cfblk2_out1_bypass = (Action_Port == 1'b0 ? cfblk2_out1_last_value :
              cfblk2_out1);



  assign emi_195 = cfblk2_out1_bypass;

endmodule  // cfblk2_block

