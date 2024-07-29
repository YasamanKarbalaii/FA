`timescale 1ns / 1ps
module Adder(a,b,cin,sum,cout);
input [7:0] a;
input [7:0] b;
input cin;
output [7:0] sum;
output cout;
wire [7:0] c;
FA FA1(
   .A(a[0]),
	.B(b[0]),
	.Cin(cin),
	.Sum(sum[0]),
	.Cout(c[0])
	);
FA FA2(
   .A(a[1]),
	.B(b[1]),
	.Cin(c[0]),
	.Sum(sum[1]),
	.Cout(c[1])
	);
FA FA3(
   .A(a[2]),
	.B(b[2]),
	.Cin(c[1]),
	.Sum(sum[2]),
	.Cout(c[2])
	);
FA FA4(
   .A(a[3]),
	.B(b[3]),
	.Cin(c[2]),
	.Sum(sum[3]),
	.Cout(c[3])
	);
FA FA5(
   .A(a[4]),
	.B(b[4]),
	.Cin(c[3]),
	.Sum(sum[4]),
	.Cout(c[4])
	);
FA FA6(
   .A(a[5]),
	.B(b[5]),
	.Cin(c[4]),
	.Sum(sum[5]),
	.Cout(c[5])
	);
FA FA7(
   .A(a[6]),
	.B(b[6]),
	.Cin(c[5]),
	.Sum(sum[6]),
	.Cout(c[6])
	);
FA FA8(
   .A(a[7]),
	.B(b[7]),
	.Cin(c[6]),
	.Sum(sum[7]),
	.Cout(c[7])
	);
assign cout=c[7];
endmodule
