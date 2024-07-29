`timescale 1ns / 1ps
module FA_TB;
	reg A;
	reg B;
	reg Cin;
	wire Sum;
	wire Cout;
	FA uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		A = 0;
		B = 0;
		Cin = 0;
		#100;
		A=1;
		#150;
		A=0;
		B=1;
	end
endmodule

