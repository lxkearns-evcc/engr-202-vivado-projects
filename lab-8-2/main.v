module mux_2_to_1(
        input [1:0] thisBtn,
        input [0:0] thisSw,
        output reg [0:0] thisInter 
        );

always @(*) begin
    if (~thisSw[0] & thisBtn[0]) thisInter = 1;
    else if (thisSw[0] & thisBtn[1]) thisInter = 1;
    else thisInter = 0;

end
endmodule

module mux_4_to_1(
        input [3:0] btn,
        input [1:0] sw,
    
        output [0:0] led
        );
    wire [1:0] inter;
    mux_2_to_1  mux1(btn[3:2],sw[0],inter[1]);
    mux_2_to_1  mux2(btn[1:0],sw[0],inter[0]);
    mux_2_to_1  mux3(inter,sw[1],led[0]);
    

endmodule
