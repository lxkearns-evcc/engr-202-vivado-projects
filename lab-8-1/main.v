module mux_2_to_1 (
        input [1:0] btn,
        input [0:0] sw,
        output reg [0:0] led
        );

always @(*) begin
    if (~sw & btn[1]) led[0] = 1;
    else if (sw & btn[0]) led[0] = 1;

end
endmodule
