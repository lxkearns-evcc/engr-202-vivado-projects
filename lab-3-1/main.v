module problem_1(
        input [0:2] btn,
        output[0:2] RGB_led_A
        );
genvar i;
generate
for (i = 0;i<=2;i=i+1) begin : g_btn_led
    assign btn[i] = RBG_led_A[i];
    end
endgenerate
endmodule
