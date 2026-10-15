module problem_1(
        input [0:2] btn,
        input sw[0],
        output[0:2] RGB_led_A
        );
assign sw[0]
genvar i;
generate
for (i = 0;i<=2;i=i+1) begin : g_btn_led
    assign btn[i] & sw[0] = RBG_led_A[i];
    end
endgenerate
endmodule
