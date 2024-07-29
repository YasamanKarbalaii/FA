`timescale 1ns / 1ps
module FA(A,B,Cin,Sum,Cout);
	input A,B,Cin;
	output Sum,Cout;
	wire C1,C2,S1;
HA ha1(
  .a(A),
  .b(B),
  .cout(C1),
  .sum(S1)
 );
HA ha2(
  .a(S1),
  .b(Cin),
  .cout(C2),
  .sum(Sum)
  );
or(Cout,C1,C2);
endmodule
