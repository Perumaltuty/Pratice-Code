module counter (clk, clr, q);
        input               clk, clr;
        output signed [3:0] q;
        reg    signed [3:0] tmp;
        always @ (posedge clk or posedge clr)
        begin
           if (clr)
              tmp <= 4’b0000;
           else
              tmp <= tmp + 1’b1;
        end
           assign q = tmp;
        endmodule
