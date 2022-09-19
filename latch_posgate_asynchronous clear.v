module latch (g, d, clr, q); 
        input  g, d, clr;
        output q;
        reg    q;
	always @(g or d or clr) 
        begin
           if (clr)
              q <= 1’b0;
           else if (g)
              q <= d;
        end
        endmodule
