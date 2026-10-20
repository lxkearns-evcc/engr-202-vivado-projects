module main (
        input coolant_temp,coolant_level,oil_temp,oil_level,
        output [0:1] RGB_led_B
        );
assign RGB_led_B[0] = (coolant_level && !coolant_temp && !oil_temp && !oil_level) || (!coolant_level && !coolant_temp && !oil_temp && oil_level) || (oil_temp && !oil_level) || (coolant_temp && oil_level);
assign RGB_led_B[1] = (coolant_temp && coolant_level) || (oil_temp && oil_level) || (coolant_temp && coolant_level);
endmodule
