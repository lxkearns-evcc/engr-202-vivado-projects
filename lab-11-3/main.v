

module main(
    input S,R,clk,
    output Q,Q_bar
    );
 wire sw, rw;
 assign sw = ~(S&clk);
 assign rw = ~(R&clk);
assign #1 Q = ~(sw & Q_bar);
assign #1 Q_bar = ~(rw & Q_bar);
endmodule
