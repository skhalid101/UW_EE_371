/*
Author:  Katie Neff
Title: 	 counter
Summary: 4-bit synchronous down counter with active low reset
		 that uses dataflow model logic.
*/

module counter(out, clk, rst);
	output wire [3:0] out;
	input clk, rst;
	wire [3:0] PS, NS, PS_n;
	
	// Synchronized d flip-flops that do the counting	
	DFlipFlop dff0(PS[0], PS_n[0], NS[0], clk, rst);
	DFlipFlop dff1(PS[1], PS_n[1], NS[1], clk, rst);
	DFlipFlop dff2(PS[2], PS_n[2], NS[2], clk, rst);
	DFlipFlop dff3(PS[3], PS_n[3], NS[3], clk, rst);
	
	// Counter logic
	assign out = PS;
	assign NS[0] = PS_n[0];
	assign NS[1] = PS[0] & PS[1] | PS_n[0] & PS_n[1];
	assign NS[2] = PS[2] & PS[0] | PS[2] & PS[1] | PS_n[2] & PS_n[1] & PS_n[0];
	assign NS[3] = PS[3] & PS[2] | PS[3] & PS[1] | PS[3] & PS[0] | PS_n[3] & PS_n[2] & PS_n[1] & PS_n[0];

endmodule
