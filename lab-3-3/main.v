module problem_1(
        input [0:2] btn,
        input [0:1] sw,
        output[0:2] RGB_led_A
        );

genvar i;
generate
for (i = 0;i<=2;i=i+1) begin : g_btn_led
    assign  RBG_led_A[i] = btn[i] && sw[0] && sw[1];
    end
endgenerate
endmodule
