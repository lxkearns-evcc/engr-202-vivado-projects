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

module three_bit_multiplier(
    input [5:0] sw,// A2 A1 A0 B2 B1 B0
    output [5:0] led
);
wire [6:0] carry;
wire [3:0] pp1;
wire [2:0] pp2;
full_adder fa1(sw[3]&sw[0],0,0,led[0],carry[0]);
full_adder fa2(sw[4]&sw[0],sw[3]&sw[1],carry[0],pp1[0],carry[1]);
full_adder fa3(sw[5]&sw[0],sw[4]&sw[1],carry[1],pp1[1],carry[2]);
full_adder fa4(sw[5]&sw[1],0,carry[2],pp1[2],carry[3]);
full_adder fa5(pp1[1],sw[3]&sw[2],0,pp2[0],carry[4]);
full_adder fa6(pp1[2],sw[4]&sw[2],carry[4],pp2[1],carry[5]);
full_adder fa7(pp1[3],sw[5]&sw[2],carry[5],pp2[2],carry[6]);
assign led[1] = pp1[0];
assign led[2] = pp2[0];
assign led[3] = pp2[1];
assign led[4] = pp2[2];
assign led[5] = carry[6];
endmodule
