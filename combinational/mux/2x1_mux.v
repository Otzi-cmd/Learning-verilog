module mux_2x1 (input s,i1,i2, output y);
    assign y = (~s&i1) | (s&i2);
endmodule