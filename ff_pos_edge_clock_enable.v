module flop (clk, d, ce, q);
	input  clk, d, ce;
	output q;
	reg    q;
	always @(posedge clk) 
        begin
	   if (ce)
              q <= d;
	end
        endmodule
