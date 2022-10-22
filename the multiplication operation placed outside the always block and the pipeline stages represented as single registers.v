module mult(clk, a, b, mult);
	input         clk;
	input  [17:0] a;
	input  [17:0] b;
	output [35:0] mult;
	reg    [35:0] mult;
	reg    [17:0] a_in, b_in;
	wire   [35:0] mult_res;
	reg    [35:0] pipe_1, pipe_2, pipe_3;

	   assign mult_res = a_in * b_in;

	always @(posedge clk)
	begin
	   a_in   <= a; 
	   b_in   <= b;
	   pipe_1 <= mult_res;
	   pipe_2 <= pipe_1;
	   pipe_3 <= pipe_2;
	   mult   <= pipe_3;
	end
        endmodule
