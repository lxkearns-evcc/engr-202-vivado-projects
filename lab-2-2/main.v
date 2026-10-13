module problem_1(
        input [6:0] sw,
        output [6:0] led
        );
genvar i; 
generate
for (i = 0; i<=6;i=i+1) begin : g_led_sw
    assign sw[i] = output[i];
    end
endgenerate
endmodule
