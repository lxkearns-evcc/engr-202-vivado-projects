// sw7 is control
// when off (0) makes only 0-9 display, everything beyond 9 turns off display (nothing) 
// when on (1) makes 0-9 and A-F display

module main(
    input [3:0] sw,
    input master,
    output [3:0] seg_an,
    output reg [6:0] seg_cat
        );
assign seg_an[3:0] = 4'b0000;
function [6:0] cathodeSeq (input [3:0] sw,master);
    case (sw)
        4'b0000 : cathodeSeq = 7'b1000000; // 0
        4'b0001 : cathodeSeq = 7'b1111001; // 1
        4'b0010 : cathodeSeq = 7'b0100100; // 2
        4'b0011 : cathodeSeq = 7'b0110000; // 3 
        4'b0100 : cathodeSeq = 7'b0011001; // 4 
        4'b0101 : cathodeSeq = 7'b0010010; // 5
        4'b0110 : cathodeSeq = 7'b0000011; // 6
        4'b0111 : cathodeSeq = 7'b1111000; // 7
        4'b1000 : cathodeSeq = 7'b0000000; // 8
        4'b1001 : cathodeSeq = 7'b0011000; // 9
        4'b1010 & master : cathodeSeq = 7'b0001000; // A
        4'b1011 & master : cathodeSeq = 7'b0000011; // b 
        4'b1100 & master : cathodeSeq = 7'b1000110; // C 
        4'b1101 & master : cathodeSeq = 7'b0100001; // d 
        4'b1110 & master : cathodeSeq = 7'b0000110; // E 
        4'b1111 & master : cathodeSeq = 7'b0001001; // F
        default : cathodeSeq = 7'b1111111; 
    endcase
endfunction
always @(*) begin
   seg_cat[6:0] = cathodeSeq(sw[3:0],master); 

end

 
