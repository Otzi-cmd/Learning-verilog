//`include "and_gate.v"

module and_gate_tb;
reg a,b;
wire y;
and_gate uut(a,b,y);

initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
end

endmodule


// IF THE `inlcude "xyz.v" IS IN THE CODE THEN TYPE iverilog "-o sim xyz_tb.v" IN THE TERMINAL AND THEN 'vvp sim'
// IF THE `inlcude "xyz.v" IS NOT IN THE CODE THEN TYPE iverilog "-o sim xyz.v xyz_tb.v" IN THE TERMINAL AND THEN 'vvp sim'