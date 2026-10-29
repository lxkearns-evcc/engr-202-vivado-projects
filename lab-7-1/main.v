module decoder_2_to_4(
        input [0:0] sw, [0:1] btn,
        output reg [0:3] led
        );

always @(*) begin
    if (sw[0]) begin 
        if (~btn[0] & ~btn[1]) led[0] = 1;
        else if (~btn[0] & btn[1]) led[1] = 1;
        else if (btn[0] & ~btn[1]) led[2] = 1;
        else if (btn[0] & btn[1]) led[3] = 1;
    end 

end
endmodule
