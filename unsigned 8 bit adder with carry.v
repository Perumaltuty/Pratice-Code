module adder(a, b, ci, sum);
	input  [7:0] a;
	input  [7:0] b;
	input        ci;
	output [7:0] sum;
        
	   assign sum = a + b + ci;

        endmodule
