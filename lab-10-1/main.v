module two_bit_comparator(
        input [3:0] sw, // A1A0B1B0
        output reg [2:0] RGB_led_A
        );

//assign RGB_led_A[2] = ~sw[3:0] || ~sw[3]&sw[2]&~sw[1]&sw[0] ||
//sw[3:0] || sw[3]&~sw[2]&sw[1]&~sw[0];
//assign RGB_led_A[1] = ~sw[3:2]&sw[0] || ~sw[3]&sw[1] || ~sw[2]&sw[1:0];
//assign RGB_led_A[0] = sw[3:2]&~sw[0] || sw[3]&sw[1] || sw[2]&~sw[1:0];
always @(*) begin
if ((~&sw[3:0]) || (~sw[3]&sw[2]&~sw[1]&sw[0]) || (&sw[3:0]) || (sw[3]&~sw[2]&sw[1]&~sw[0])) RGB_led_A = 3'b010; // ==
 if ((~&sw[3:2]&sw[0]) || (~sw[3]&sw[1]) || (~sw[2]&(&sw[1:0]))) RGB_led_A = 3'b001; // A<B
 if ((&sw[3:2]&~sw[0]) || (sw[3]&~sw[1]) || (sw[2]&(~&sw[1:0]))) RGB_led_A = 3'b100; // A>B

end
endmodule
