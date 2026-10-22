module main(
input [2:0] sw,
output [0:0] led
);

assign led[0] = (!sw[2] && !sw[1] && sw[0]) || (!sw[2] && sw[1] && !sw[0])
|| (sw[2] && !sw[1] && !sw[0]) || (sw[2] && sw[1] && sw[0]);
endmodule
