module shift (clk, s, si, so);
	input        clk, si, s;
	output       so;
	reg    [7:0] tmp;
	always @(posedge clk)
	begin
	   if (s)
	      tmp <= 8’b11111111;
	   else
	      tmp <= {tmp[6:0], si};
	end
	   assign so = tmp[7];
        endmodule
