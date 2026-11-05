module multiplier_2bit(
    input [1:0] A, B,
    output [3:0] X
);
wire w0, w1, w2, w3, C;        // C = Carry 

assign w0 = A[0]&B[0];
assign w1 = A[0]&B[1];
assign w2 = A[1]&B[0];
assign w3 = A[1]&B[1];

assign X[0] = w0;
assign {C, X[1]} = w1 + w2;
assign {X[3], X[2]} = w3 + C;

//  OR WE COULD HAVE DONE LIKE ---> assign X = A * B; 

endmodule 
