`include "4x2_encoder.v"

module encoder_4x2_tb;

reg [3:0] i;
wire  y1, y0;

encoder_4x2 uut(
    .i(i),
    .y0(y0),
    .y1(y1)
);

initial begin
    $dumpfile("4x2_encoder.vcd");
    $dumpvars(0, encoder_4x2_tb);

    i = 4'b0001; #10;
    i = 4'b0010; #10;
    i = 4'b0100; #10;
    i = 4'b1000; #10;

    $finish;
end  
endmodule