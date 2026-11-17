

module main(
    input D,clk,
    output Q,Q_bar
    );
 wire sw, rw;
 assign sw = ~(D&clk);
 assign rw = ~(~D&clk);
assign #1 Q = ~(sw & Q_bar);
assign #1 Q_bar = ~(rw & Q);
endmodule
