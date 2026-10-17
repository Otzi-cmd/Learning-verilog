module encoder_4x2 (input [3:0] i, output y1, y0);
    assign y0 = i[1] | i[3];
    assign y1 = i[2] | i[3];
endmodule