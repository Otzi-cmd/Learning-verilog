`include "2x4_decoder.v"

module decoder_2x4_tb;

reg i0,i1;
wire [3:0] y;

decoder_2x4 uut(
    .i0(i0),
    .i1(i1),
    .y(y)
);

initial begin
    $dumpfile("2x4_decoder.vcd");
    $dumpvars(0, decoder_2x4_tb);

    i1=0; i0=0; #10;
    i1=0; i0=1; #10;
    i1=1; i0=0; #10;
    i1=1; i0=1; #10;

    $finish;
end  
endmodule