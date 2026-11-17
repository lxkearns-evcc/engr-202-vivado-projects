`timescale 1ns / 1ps 
module nand_sr_latch_sim;
reg S,R;
wire Q, Q_bar;

nand_latch_sr nl(S,R,Q,Q_bar);
initial begin
S = 1; R = 1;
#100 S = 0;
#100 S = 1;
#100 R = 0;
#100 R = 1;
#100 S = 0;R = 0;
#100 S = 1;R = 1;
#100 S = 1; R = 0;
#100 S = 0; R = 1;
#100 S = 0; R = 1;
$finish;
end 
endmodule
