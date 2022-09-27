module shift (clk, ce, si, so);
	input        clk, si, ce;
	output       so;
	reg    [7:0] tmp;
	always @(negedge clk)
	begin
	   if (ce) begin
	      tmp    <= tmp << 1;
	      tmp[0] <= si;
	   end
	end
	   assign so = tmp[7];
        endmodule
