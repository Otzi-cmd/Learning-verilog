module decoder_2x4 (input i0,i1, output [3:0] y );
    assign y[0] = ~i0 & ~i1;
    assign y[1] = ~i0 & i1;
    assign y[2] = i0 & ~i1;
    assign y[3] = i0 & i1;
endmodule