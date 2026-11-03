module mux_2_to_1(
        input [1:0] btn,
        input [0:0] sw,
        output reg [0:0] thisInter 
        );

always @(*) begin
    if (~sw[0] & btn[0]) inter = 1;
    else if (sw[0] & btn[1]) inter = 1;
    else inter = 0;

end
endmodule

module mux_4_to_1(
        input [3:0] btn,
        input [1:0] sw,
        wire reg [1:0] inter,
        output reg [0:0] led
        )
always @(*) begin 
    mux_2_to_1(btn[3:2],sw[0],thisInter[1]);
    mux_2_to_1(btn[1:0],sw[0],thisInter[0])
    led = mux_2_to_1(thisInter,sw[1]);
end
endmodule
