module adder(a, b, sum, co);
	input  [7:0] a;
	input  [7:0] b;
	output [7:0] sum;
	output       co;
	wire   [8:0] tmp;

	   assign tmp = a + b;
	   assign sum = tmp [7:0];
	   assign co  = tmp [8];

        endmodule
