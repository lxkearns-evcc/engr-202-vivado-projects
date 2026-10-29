module decoder_2_to_4(
        input [0:0] sw, [0:1] btn,
        output reg [0:3] led
        );

always @(*) begin
    led = 4'b0000;
    if (sw[0]) begin 
        if (~btn[0] & ~btn[1]) led = 4'b0001;
        else if (~btn[0] & btn[1]) led = 4'b0010;
        else if (btn[0] & ~btn[1]) led = 4'b0100;
        else if (btn[0] & btn[1]) led = 4'b1000;
    end 

end
endmodule
