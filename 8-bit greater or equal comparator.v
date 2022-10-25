module compar(a, b, cmp);
	input  [7:0] a;
	input  [7:0] b;
	output       cmp;

	   assign cmp = (a >= b) ?  1’b1 : 1’b0;

        endmodule
