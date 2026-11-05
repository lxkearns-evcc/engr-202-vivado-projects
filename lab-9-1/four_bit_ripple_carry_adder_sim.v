`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2026 01:12:10 PM
// Design Name: 
// Module Name: four_bit_ripple_carry_adder_sim
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


module four_bit_ripple_carry_adder_sim;
    reg [7:0] sw;
    wire [4:0] led;
    
 
    four_bit_ripple_carry_adder rca4(sw[7:0],led[4:0]);
    initial begin
    sw[7:0] = 8'b00000000;
    #10 sw[7:0] = 8'b11110101;
    #10 sw[7:0] = 8'b11001111;
    #10 sw[7:0] = 8'b11000011;
    #10 sw[7:0] = 8'b11001010;
    #10 $finish;
    end
endmodule
