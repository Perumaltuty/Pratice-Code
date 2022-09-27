module shift (clk, sload, si, d, so);
        input        clk, si, sload;
        input  [7:0] d;
        output       so;
        reg    [7:0] tmp;
        always @(posedge clk)
        begin
           if (sload)
              tmp <= d;
           else
              tmp <= {tmp[6:0], si};
        end
           assign so = tmp[7];
        endmodule
