module nand_latch_sr(
        input S,R,
        output Q, Q_bar
        );
assign #1 Q = ~(~S & Q_bar);
assign #1 Q_bar = ~(~R & Q);
endmodule
