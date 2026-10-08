`include "4x1_mux_behavioral.v"

module mux_4x1_tb;

reg [1:0]s;
reg [3:0]i;
wire y;

mux_4x1 uut(
    .s(s),
    .i(i),
    .y(y)
);

integer k,j;

initial begin
    $dumpfile("4x1_mux_behavioral.vcd");
    $dumpvars(0, mux_4x1_tb);

    for(k=0; k<16; k=k+1) begin
        i = k;
      
        for(j=0; j<4; j=j+1) begin
            s = j;
            #10;
        end
    
    end

    $finish;
end
endmodule
