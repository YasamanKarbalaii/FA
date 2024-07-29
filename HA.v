`timescale 1ns / 1ps
module HA(a,b,cout,sum);
	input a,b;
	output sum,cout;
	and(cout,a,b);
	xor(sum,a,b);
endmodule
