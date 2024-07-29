`timescale 1ns / 1ps
module Adder_TB;
	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	wire [7:0] sum;
	wire cout;
	Adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		#5;
		a = 8'b01010101;
		b = 8'b10110101;
		cin = 0;
	end
      
endmodule

