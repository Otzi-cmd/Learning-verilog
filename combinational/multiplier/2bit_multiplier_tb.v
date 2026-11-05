`timescale 1ns/1ps
`include "2bit_multiplier.v"

module multiplier_2bit_tb;

reg [1:0] A, B;
wire [3:0] X; 

multiplier_2bit uut(
    .A(A),
    .B(B),
    .X(X)
);
integer i;
integer j;
initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0,multiplier_2bit_tb );
    
    // FOR ALL POSSIBLE COMBINATION
    for(i=0; i<4; i=i+1)begin           
        A = i;
        for (j=0; j<4; j=j+1)begin
            B = j;
            #10;
        end
    end

    $finish;
end
    
endmodule