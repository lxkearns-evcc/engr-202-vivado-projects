module half_adder(
        input [1:0] vals, // A,B
        output reg [1:0] out // Carry, sum
        );
always @(*) begin
    out = `{1'b0,1'b0};
    out[1] = vals[1] & vals[0];
    out[0] = ~vals[1] & vals[0] || vals[1] & vals[0]
end
endmodule
module full_adder(
    input [1:0] vals,// A,B,Cin
    input [0:0] carry,
    output reg [1:0] out //carry, sum 
    );
always @(*) begin 
    out = `{1'b0,1'b0};
    out[0] = vals[1] ^ vals[0] ^ carry[0];
    out[1] = vals[1] & carry[0] || vals[0] & carry[0] || vals[1] & vals[0]; 

end 
endmodule

module four_bit_ripple_carry_adder (
    input [7:0] sw,
    output [4:0] led
);

half_adder ha(sw[1:0],led[1:0]);
full_adder fa1(sw[3:2],led[1],led[2:1]);
full_adder fa2(sw[5:4],led[2],led[3:2]);
full_adder fa3(sw[7:6],led[3],led[4:3]);
