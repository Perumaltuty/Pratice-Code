 module compar(a, b, res);
        input  [7:0]  a;
        input  [3:0]  b;
        output [11:0] res;

           assign res = a * b;

        endmodule
