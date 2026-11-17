`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2026 02:41:10 PM
// Design Name: 
// Module Name: nand_gated_sr_latch
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


module nand_gated_sr_latch;
reg S,R,clk;
wire Q, Q_bar;

main m(S,R,clk,Q,Q_bar);
initial begin
clk = 1'b0;
end 
initial 
#1000 $finish; 
always 
#50 clk = ~clk;
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
