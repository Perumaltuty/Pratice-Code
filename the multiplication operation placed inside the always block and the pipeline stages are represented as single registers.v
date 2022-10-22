module mult(clk, a, b, mult);
        input         clk;
        input  [17:0] a;
        input  [17:0] b;
        output [35:0] mult;
        reg    [35:0] mult;
        reg    [17:0] a_in, b_in;
        reg    [35:0] mult_res;
        reg    [35:0] pipe_2, pipe_3;
        always @(posedge clk)
        begin
	   a_in     <= a; 
           b_in     <= b;
           mult_res <= a_in * b_in;
           pipe_2   <= mult_res;
           pipe_3   <= pipe_2;
           mult     <= pipe_3;
        end
        endmodule
