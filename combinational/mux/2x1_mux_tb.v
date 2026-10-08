`include "2x1_mux.v"

module mux_2x1_tb;

reg s, i1, i2;
wire y;

mux_2x1 uut(
    .s(s),
    .i1(i1),
    .i2(i2),
    .y(y)
);

initial begin
    $dumpfile("2x1_mux.vcd");
    $dumpvars(0, mux_2x1_tb);

    s=0; i1=0; i2=0; #10;
    s=0; i1=0; i2=1; #10;
    s=0; i1=1; i2=0; #10;
    s=0; i1=1; i2=1; #10;

    s=1; i1=0; i2=0; #10;
    s=1; i1=0; i2=1; #10;
    s=1; i1=1; i2=0; #10;
    s=1; i1=1; i2=1; #10;

    $finish;
end
endmodule