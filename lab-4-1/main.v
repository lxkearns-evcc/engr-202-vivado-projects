module main(
input [0:2] sw,
output [0:0] led
);

assign led[0] = !sw[0] && !sw[1] && sw[2];
assign led[0] = !sw[0] && sw[1] && !sw[2];
assign led[0] = sw[0] && !sw[1] && sw[2];
assign led[0] = sw[0] && sw[1] && !sw[2];
endmodule;
