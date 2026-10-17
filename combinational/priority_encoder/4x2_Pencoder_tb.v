`include "4x2_Pencoder.v"

module pencoder_4x2_tb;

reg [3:0] i;
wire y0, y1, valid;
pencoder_4x2 uut(
    .i(i),
    .y0(y0),
    .y1(y1),
    .valid(valid)
);
integer j;
initial begin
    $dumpfile("4x2_Pencoder.vcd");
    $dumpvars(0, pencoder_4x2_tb);
   
    for(j=0; j<4; j=j+1) begin
        i = 2**j;      // Uses '**' for exponent instead of '^'
        #10;
    end
    i = 4'b0000;     // Just to check if the code is correct
    i = 4'b0110;
    $finish;
end

endmodule