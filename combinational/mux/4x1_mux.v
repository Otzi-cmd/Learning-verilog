module mux_2x1 (input s0,s1,i0,i1,i2,i3, output y);

    assign w1 = (~s0) & (~s1) & (i0);
    assign w2 = (~s0) & (s1) & (i1);
    assign w3 = (s0) & (~s1) & (i2);
    assign w4 = (s0) & (s1) & (i3);

    assign y = w1 | w2 | w3 | w4 ;

endmodule