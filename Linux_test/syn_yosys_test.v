/* Generated by Yosys 0.37+1 (git sha1 e1f4c5c9cbb, clang  -fPIC -Os) */

(* cells_not_processed =  1  *)
(* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:14.1-54.10" *)
module module55(y, clk, wire56, wire57, wire58, wire59);
  reg \$auto$verilog_backend.cc:2253:dump_module$53  = 0;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [7:0] _00_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [17:0] _01_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [4:0] _02_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [19:0] _03_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [17:0] _04_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [9:0] _05_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:29.3-53.8" *)
  reg [12:0] _06_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:27.23-27.37" *)
  reg [7:0] _07_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:26.24-26.38" *)
  reg [17:0] _08_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:25.30-25.44" *)
  reg [4:0] _09_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:24.24-24.38" *)
  reg [19:0] _10_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:23.24-23.38" *)
  reg [17:0] _11_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:22.30-22.44" *)
  reg [9:0] _12_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:21.23-21.37" *)
  reg [12:0] _13_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.41-36.49" *)
  wire [17:0] _14_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *)
  wire [7:0] _15_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *)
  wire [7:0] _16_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *)
  wire [17:0] _17_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *)
  wire [7:0] _18_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *)
  wire [19:0] _19_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:50.21-50.43" *)
  wire [4:0] _20_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.16-46.46" *)
  wire _21_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:0.0-0.0" *)
  wire _22_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.23-33.41" *)
  wire _23_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.29-41.71" *)
  wire _24_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.29-46.44" *)
  wire [20:0] _25_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:40.16-40.37" *)
  wire [9:0] _26_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.21-46.48" *)
  wire [14:0] _27_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:50.21-50.43" *)
  wire [4:0] _28_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.12-36.51" *)
  wire _29_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *)
  wire _30_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *)
  wire _31_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *)
  wire _32_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *)
  wire _33_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.24-45.65" *)
  wire _34_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *)
  wire _35_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.20-45.55" *)
  wire _36_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.39-41.70" *)
  wire _37_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:45.24-45.31" *)
  wire [13:0] _38_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.26-46.45" *)
  wire _39_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.22-34.44" *)
  wire _40_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.15-36.50" *)
  wire [14:0] _41_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *)
  wire [7:0] _42_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *)
  wire [7:0] _43_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *)
  wire [17:0] _44_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *)
  wire [7:0] _45_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.24-45.65" *)
  wire [13:0] _46_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *)
  wire [19:0] _47_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.20-45.55" *)
  wire [13:0] _48_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.52-41.68" *)
  wire [13:0] _49_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:16.30-16.33" *)
  input clk;
  wire clk;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:27.23-27.28" *)
  reg [7:0] reg77;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:26.24-26.29" *)
  reg [17:0] reg78;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:25.30-25.35" *)
  reg [4:0] reg79;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:24.24-24.29" *)
  reg [19:0] reg80;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:23.24-23.29" *)
  reg [17:0] reg81;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:22.30-22.35" *)
  reg [9:0] reg82;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:21.23-21.28" *)
  reg [12:0] reg83;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:17.30-17.36" *)
  input [6:0] wire56;
  wire [6:0] wire56;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:18.38-18.44" *)
  input [20:0] wire57;
  wire [20:0] wire57;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:19.31-19.37" *)
  input [17:0] wire58;
  wire [17:0] wire58;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:20.30-20.36" *)
  input [13:0] wire59;
  wire [13:0] wire59;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:15.35-15.36" *)
  output [372:0] y;
  wire [372:0] y;
  assign _14_ = reg78 + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.41-36.49" *) 8'ha1;
  assign _15_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *) wire56;
  assign _16_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *) reg77[0];
  assign _17_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *) reg77;
  assign _18_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *) wire59[8:2];
  assign _19_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *) wire59;
  assign _20_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:50.21-50.43" *) wire56[2:0];
  assign _21_ = reg80 && (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.16-46.46" *) _39_;
  assign _22_ = ! (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:0.0-0.0" *) _29_;
  assign _23_ = ! (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.23-33.41" *) { 8'ha6, wire58 };
  assign _24_ = 1'h0 < (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.29-41.71" *) _37_;
  assign _25_ = wire57 * (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.29-46.44" *) wire59;
  assign _26_ = - (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:40.16-40.37" *) reg78[13:4];
  assign _27_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.21-46.48" *) { _46_, _21_ };
  assign _28_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:50.21-50.43" *) _20_;
  assign _29_ = & (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.12-36.51" *) _41_;
  assign _30_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *) wire56;
  assign _31_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *) _42_;
  assign _32_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *) wire57;
  assign _33_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *) _44_;
  assign _34_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.24-45.65" *) _45_;
  assign _35_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *) reg77;
  assign _36_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.20-45.55" *) _47_;
  assign _37_ = ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.39-41.70" *) _49_;
  assign _38_ = ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:45.24-45.31" *) reg80;
  assign _39_ = ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:46.26-46.45" *) _25_;
  assign _40_ = _23_ << (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.22-34.44" *) _43_;
  assign _41_ = wire58[14:0] >> (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.15-36.50" *) _14_;
  assign _42_ = _30_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.48-33.73" *) 8'hb9 : _15_;
  assign _43_ = _31_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:33.47-34.43" *) reg77 : _16_;
  assign _44_ = _32_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.26-42.49" *) _17_ : wire58;
  assign _45_ = _33_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.25-43.54" *) 8'hb3 : _18_;
  assign _46_ = _34_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:42.24-45.65" *) _48_ : wire59;
  assign _47_ = _35_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.21-44.43" *) reg80 : _19_;
  assign _48_ = _36_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:44.20-45.55" *) _38_ : 14'h0000;
  assign _49_ = 1'h0 ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:41.52-41.68" *) wire59;
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _13_ = 13'h0000;
  end
  always @* begin
  end
  initial begin
      reg83 <= _13_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _12_ = 10'h000;
  end
  always @* begin
  end
  initial begin
      reg82 <= _12_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _11_ = 18'h00000;
  end
  always @* begin
  end
  initial begin
      reg81 <= _11_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _10_ = 20'h00000;
  end
  always @* begin
  end
  initial begin
      reg80 <= _10_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _09_ = 5'h00;
  end
  always @* begin
  end
  initial begin
      reg79 <= _09_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _08_ = 18'h00000;
  end
  always @* begin
  end
  initial begin
      reg78 <= _08_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _07_ = 8'h00;
  end
  always @* begin
  end
  initial begin
      reg77 <= _07_;
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2253:dump_module$53 ) begin end
    _05_ = reg82;
    _04_ = reg81;
    _03_ = reg80;
    _02_ = reg79;
    _00_ = wire58[7:0];
    _01_ = { 16'h0000, wire58[5], _40_ };
    _06_ = 13'h0001;
    (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:35.11-36.52" *)
    if (_22_)
    begin
      _02_ = reg77[5:1];
      _03_ = { 10'h000, _26_ };
      _04_ = { _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_, _24_ };
      _05_ = _27_[9:0];
    end
    else
      _02_ = _28_;
  end
  always @(posedge clk) begin
      reg83 <= _06_;
      reg82 <= _05_;
      reg81 <= _04_;
      reg80 <= _03_;
      reg79 <= _02_;
      reg78 <= _01_;
      reg77 <= _00_;
  end
  assign y = { 281'h00000000000000000000000000000000000000000000000000000000000000000000000, reg83, reg82, reg81, reg80, reg79, reg78, reg77 };
endmodule

(* cells_not_processed =  1  *)
(* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:1.1-12.10" *)
module top(y, wire4, wire2, wire1, wire0);
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.27-11.33" *)
  wire [22:0] _00_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.47-11.62" *)
  wire [21:0] _01_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.27-11.33" *)
  wire [22:0] _02_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.73-11.74" *)
  wire _03_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.24-10.51" *)
  wire _04_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.73-11.74" *)
  wire [22:0] _05_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:9.19-11.75" *)
  wire [22:0] _06_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.46-11.72" *)
  wire [21:0] _07_;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:6.38-6.43" *)
  input [21:0] wire0;
  wire [21:0] wire0;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:5.31-5.36" *)
  input [21:0] wire1;
  wire [21:0] wire1;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:4.38-4.43" *)
  input [21:0] wire2;
  wire [21:0] wire2;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:3.31-3.36" *)
  input [20:0] wire4;
  wire [20:0] wire4;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:7.24-7.29" *)
  wire [5:0] wire5;
  (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:2.35-2.36" *)
  output [475:0] y;
  wire [475:0] y;
  assign _00_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.27-11.33" *) wire4;
  assign _01_ = wire2 < (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.47-11.62" *) 8'hac;
  assign _02_ = + (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.27-11.33" *) _00_;
  assign _03_ = | (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.73-11.74" *) wire2;
  assign _04_ = ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.24-10.51" *) { wire2, wire1 };
  assign _05_ = _03_ ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:10.73-11.74" *) _02_ : { 1'h0, _07_ };
  assign _06_ = wire2[15] ? (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:9.19-11.75" *) { _04_, wire1 } : _05_;
  assign _07_ = _01_ ~^ (* src = "/doc/Verismith/03-06-04/fuzz_888/reduce_yosys.v:11.46-11.72" *) wire0;
  assign y = { 470'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, wire5 };
  assign wire5 = _06_[5:0];
endmodule
