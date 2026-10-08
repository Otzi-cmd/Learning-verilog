`include "4x1_mux_behavioral.v"

module mux_4x1_tb;

reg s0, s1, i0, i1, i2, i3;
wire y;

mux_4x1 uut(
    .s0(s0),
    .s1(s1),
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .y(y)
);

integer i,j;

initial begin
    $dumpfile("4x1_mux_behavioral.vcd");
    $dumpvars(0, mux_4x1_tb);

    for(i=0; i<16; i=i+1) begin
        {i3, i2, i1, i0} = i;
      
        for(j=0; j<4; j=j+1) begin
            {s1, s0} = j;
            #10;
        end
    
    end

    $finish;
end
endmodule
