`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2026 01:48:58 PM
// Design Name: 
// Module Name: nor_latch_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nor_latch_sim;
reg S,R;
wire Q, Q_bar;
NOR_latch nl(S,R,Q,Q_bar);

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

