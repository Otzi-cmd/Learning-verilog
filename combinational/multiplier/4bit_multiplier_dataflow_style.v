module multiplier_4bit(
    input [3:0] A, B,
    output [7:0] X
);
wire[15:0] w;    // FOR OUPUTS OF AND OPERATION
wire [1:0] c;    // CARRY 
wire [7:0] a;    // FOR ALL ADITTION OPERATION
genvar i, j;

generate
    for(i=0; i<4; i=i+1)begin     
        for (j=0; j<4; j=j+1)begin
            assign w[i*4 + j] = A[j] & B[i];
        end
    end
endgenerate

assign {c[0], a[3:0]} ={1'b0, w[3:1]} + w[7:4];     // SINCE VERILOG ARRANGES BITS FORM MSB TO LSB SO WE HAVE PUT 0 AT MSB OTHERWISE IT WOULD ADD w[7] WITH w[3]
assign {c[1], a[7:4]} = {c[0], a[3:1]} + w[11:8];
assign X[7:3]= {c[1], a[7:5]} + w[15:12];
assign X[0] = w[0];
assign X[1] = a[0];
assign X[2] = a[4];
    
//  OR WE COULD HAVE SIMPLY DONE LIKE --->  X = A * B; 

endmodule