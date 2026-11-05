module multiplier_4bit(
    input [3:0] A, B,
    output reg [7:0] X
);

integer i;

always @(A,B) begin
    X = 8'b0;

    for(i=0; i<4; i= i+1)begin

        if(B[i])begin
            X = X + ({4'b0000, A}<<i);  
        end

    end 
    
end
endmodule