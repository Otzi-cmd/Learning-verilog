module xnor_gate(input a,b, output y);
    assign y = (~a & ~b) | (a&b);
endmodule