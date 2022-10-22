module addsub(a, b, oper, res);
	input        oper;
	input  [7:0] a;
	input  [7:0] b;
	output [7:0] res;
	reg    [7:0] res;
	always @(a or b or oper)
	begin
	   if (oper == 1’b0)
	      res = a + b;
	   else
	      res = a - b;
        end
        endmodule
