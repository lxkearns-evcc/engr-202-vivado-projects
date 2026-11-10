module two_bit_comparator(
        input [3:0] sw, // A1A0B1B0
        output [2:0] rgb_led
        );
assign rgb_led[2] = ~sw[3:0] || ~sw[3]&sw[2]&~sw[1]&sw[0] ||
sw[3:0] || sw[3]&~sw[2]&sw[1]&~sw[0];
assign rgb_led[1] = ~sw[3:2]&sw[0] || ~sw[3]&sw[1] || ~sw[2]&sw[1:0];
assign rgb_led[0] = sw[3:2]&~sw[0] || sw[3]&sw[1] || sw[2]&~sw[1:0];
endmodule
