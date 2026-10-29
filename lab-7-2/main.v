module decoder_2_to_4(
        input [0:0] btn, [1:0] sw,
        output reg [3:0] led
        );

always @(*) begin
    led = 4'b0000;
    if (btn[0]) begin 
        if (~sw[0] & ~sw[1]) led = 4'b1000;
        else if (sw[0] & ~sw[1]) led = 4'b0100;
        else if (~sw[0] & sw[1]) led = 4'b0010;
        else if (sw[0] & sw[1]) led = 4'b0001;
    end 

end
endmodule
module decoder_3_to_8(
    input [2:0] sw, [0:0] btn,
    output [7:0] led 
);

decoder_2_to_4 decoder1(btn[0] & ~sw[2],sw[1:0],led[7:4]);
decoder_2_to_4 decoder2(btn[0] & sw[2],sw[1:0],led[3:0]);

endmodule
