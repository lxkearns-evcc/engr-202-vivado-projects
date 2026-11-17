module NOR_latch (
    input S, R,
    output Q, Q_bar
    );
assign #1 Q = ~(R | Q_bar);
assign #1 Q_bar = ~(S | Q);
endmodule


