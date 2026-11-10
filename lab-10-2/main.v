module full_adder(
    input [0:0] A,
    input [0:0] B,// A,B
    input [0:0] carry_in,
    output reg [0:0] sum, //carry, sum
    output reg [0:0]  carry_out
    );
always @(*) begin 
    carry_out[0] = 0;
    sum[0] = 0;
    sum[0] = A[0] ^ B[0] ^ carry_in[0];
    carry_out[0] = A[0] & carry_in[0] || B[0] & carry_in[0] || A[0] & B[0]; 

end 
endmodule


