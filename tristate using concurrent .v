module three_st (t, i, o);
	input  t, i;
	output o;
	   assign o = (~t) ? i: 1’bZ;
        endmodule
