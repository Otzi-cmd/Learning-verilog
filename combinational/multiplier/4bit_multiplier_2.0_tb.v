`include "4bit_multiplier_2.0.v"

module multiplier_4bit_tb;

reg [3:0] A, B;
wire [7:0] X; 

multiplier_4bit uut(
    .A(A),
    .B(B),
    .X(X)
);
integer i;
integer j;
initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0,multiplier_4bit_tb );
    
    // FOR ALL POSSIBLE COMBINATION
    for(i=0; i<16; i=i+1)begin           
        A = i;
        for (j=0; j<16; j=j+1)begin
            B = j;
            #10;
        end
    end

    $finish;
end
    
endmodule