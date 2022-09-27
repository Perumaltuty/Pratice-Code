module shift (clk, load, si, d, so);
	input        clk, si, load;
	input  [7:0] d;
	output       so;
	reg    [7:0] tmp;
	always @(posedge clk or posedge load)
	begin
	   if (load) 
              tmp <= d;
	   else
	      tmp <= {tmp[6:0], si};
	end
	   assign so = tmp[7];
        endmodule
