module counter (clk, sload, q);
	input        clk, sload;
	output [3:0] q;
	reg    [3:0] tmp;
	always @(posedge clk)
	begin
	   if (sload) 
              tmp <= 4’b1010;
	   else 
	      tmp <= tmp + 1’b1;
	end
	   assign q = tmp;
        endmodule
