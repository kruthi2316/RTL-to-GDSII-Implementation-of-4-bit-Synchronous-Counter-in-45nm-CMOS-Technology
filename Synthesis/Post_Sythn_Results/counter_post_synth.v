
module counter ( clk, rst, out );
  output [3:0] out;
  input clk, rst;
  wire   n19, n20, N7, N8, N10, n1, n2, n3, n5, n6, n7, n8, n9, n10, n13, n14,
         n15, n16, n17, n18;

  DFFPOSX1 \out_reg[0]  ( .D(n18), .CLK(clk), .Q(n20) );
  DFFPOSX1 \out_reg[1]  ( .D(N8), .CLK(clk), .Q(n19) );
  DFFPOSX1 \out_reg[2]  ( .D(n9), .CLK(clk), .Q(out[2]) );
  DFFPOSX1 \out_reg[3]  ( .D(n15), .CLK(clk), .Q(out[3]) );
  XOR2X1 U10 ( .A(out[1]), .B(out[0]), .Y(n6) );
  AOI21X1 U12 ( .A(n1), .B(n7), .C(n3), .Y(N10) );
  AOI21X1 U14 ( .A(out[2]), .B(n5), .C(n2), .Y(n8) );
  INVX1 U15 ( .A(out[2]), .Y(n17) );
  AND2X1 U16 ( .A(n10), .B(rst), .Y(n9) );
  XNOR2X1 U17 ( .A(n5), .B(n17), .Y(n10) );
  BUFX2 U18 ( .A(n19), .Y(out[1]) );
  BUFX2 U19 ( .A(n20), .Y(out[0]) );
  INVX1 U20 ( .A(n5), .Y(n14) );
  NOR3X1 U21 ( .A(n17), .B(out[3]), .C(n14), .Y(n13) );
  INVX1 U22 ( .A(n13), .Y(n7) );
  BUFX2 U23 ( .A(N10), .Y(n15) );
  BUFX2 U24 ( .A(n8), .Y(n16) );
  OR2X1 U25 ( .A(n3), .B(out[0]), .Y(N7) );
  INVX1 U26 ( .A(N7), .Y(n18) );
  AND2X2 U27 ( .A(n19), .B(n20), .Y(n5) );
  INVX1 U28 ( .A(n16), .Y(n1) );
  AND2X1 U29 ( .A(rst), .B(n6), .Y(N8) );
  INVX1 U30 ( .A(out[3]), .Y(n2) );
  INVX1 U31 ( .A(rst), .Y(n3) );
endmodule

