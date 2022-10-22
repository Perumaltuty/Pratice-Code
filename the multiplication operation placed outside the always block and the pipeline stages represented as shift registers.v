module mult3(clk, a, b, mult);
	input         clk;
	input  [17:0] a;
	input  [17:0] b;
	output [35:0] mult;
	reg    [35:0] mult;
	reg    [17:0] a_in, b_in;
	wire   [35:0] mult_res;
	reg    [35:0] pipe_regs [3:0];

	   assign mult_res = a_in * b_in;

	always @(posedge clk)
	begin
	   a_in <= a; 
	   b_in <= b;
	   {pipe_regs[3],pipe_regs[2],pipe_regs[1],pipe_regs[0]} <= 
           {mult, pipe_regs[3],pipe_regs[2],pipe_regs[1]};
	end
        endmodule
