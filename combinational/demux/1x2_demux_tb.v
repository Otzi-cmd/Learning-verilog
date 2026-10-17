`include "1x2_demux.v"

module demux_1x2_tb;

reg s, i;
wire y0, y1;

demux_1x2 uut(
    .s(s),
    .i(i),
    .y0(y0),
    .y1(y1)
);

initial begin
    $dumpfile("1x2_demux.vcd");
    $dumpvars(0, demux_1x2_tb);

    s=0; i=0; #10;
    s=0; i=1; #10;
    s=1; i=0; #10;
    s=1; i=1; #10;

    $finish;
end
endmodule

