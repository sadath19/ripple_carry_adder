/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Jan 21 15:21:13 2026
/////////////////////////////////////////////////////////////


module fa_0 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  AO22X1_RVT U3 ( .A1(a), .A2(b), .A3(cin), .A4(n1), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(a), .A2(b), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(cin), .A2(n1), .Y(s) );
endmodule


module fa_1 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(a), .A2(b), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(s) );
  XOR2X1_RVT U2 ( .A1(a), .A2(b), .Y(n2) );
endmodule


module fa_2 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(a), .A2(b), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(s) );
  XOR2X1_RVT U2 ( .A1(a), .A2(b), .Y(n2) );
endmodule


module fa_3 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22X1_RVT U3 ( .A1(a), .A2(b), .A3(cin), .A4(n2), .Y(cout) );
  XOR2X1_RVT U1 ( .A1(cin), .A2(n2), .Y(s) );
  XOR2X1_RVT U2 ( .A1(a), .A2(b), .Y(n2) );
endmodule


module rca ( a, b, cin, s, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] s;
  input cin;
  output cout;
  wire   c1, c2, c3;

  fa_0 dut1 ( .a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1) );
  fa_3 dut2 ( .a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2) );
  fa_2 dut3 ( .a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3) );
  fa_1 dut4 ( .a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout) );
endmodule

