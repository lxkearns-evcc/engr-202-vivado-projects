module half_adder(
        input [0:0] A,
        input [0:0] B, // A,B
        output reg [0:0] sum, // Carry, sum
        output reg[ 0:0] carry
        );
always @(*) begin
    carry[0] = 0;
    sum[0] = 0;
    carry[0] = A[0] & B[0];
    sum[0] = ~A[0] & B[0] || A[0] & ~B[0];
end
endmodule
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

module four_bit_ripple_carry_adder (
    input [7:0] sw,
    
    output [4:0] led
);
wire [2:0] carrys;
half_adder ha(sw[0],sw[4],led[0],carrys[0]);
full_adder fa1(sw[1],sw[2],carrys[0],led[1],carrys[1]);
full_adder fa2(sw[2],sw[6],carrys[1],led[2],carrys[2]);
full_adder fa3(sw[3],sw[7],carrys[2],led[3],led[4]);
endmodule
