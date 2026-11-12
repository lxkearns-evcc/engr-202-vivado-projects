module two_bit_comparator(
        input [3:0] sw, // A1A0B1B0
        output reg [2:0] RGB_led_A
        );

always @(*) begin
    RGB_led_A = 3'b000;
    if (&(~sw[3:0]) | ~sw[3]&sw[2]&~sw[1]&sw[0] | &sw[3:0] | sw[3]&~sw[2]&sw[1]&~sw[0]) RGB_led_A = 3'b010;
    if (&(~sw[3:2])&sw[0] | ~sw[3]&sw[1] | ~sw[2]&sw[1]&sw[0]) RGB_led_A = 3'b001;
    if (sw[3]&sw[2]&~sw[0] | sw[3] & ~sw[1] | sw[2] & ~sw[1] & ~sw[0]) RGB_led_A = 3'b100;
end
endmodule
