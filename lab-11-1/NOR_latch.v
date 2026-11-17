`timescale 1ns / 1ps 

reg S,R;
wire Q, Q_bar;
nl NOR_latch(S,R,Q,Q_bar);

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
end 
endmodule
