module pencoder_4x2 (input [3:0] i, output y1, y0, valid);

    assign y0 = (i[1] & ~i[2]) | i[3];
    assign y1 = i[2] | i[3];
    assign valid = |i;       /* The reduction operator '|' takes all the individual bits of a single vector and applies a logical OR operation across them.
                                So it means |i = i[1] | i[2] | i[3] | i[4]      */
endmodule
