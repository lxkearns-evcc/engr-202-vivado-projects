module voting(
        input [0:4] sw,
        output [0:0] led
        );
assign led[0] = 
(sw[2] && sw[1] && sw[0]) ||
(sw[4] && sw[3] && sw[0]) ||
(sw[3] && sw[1] && sw[0]) ||
(sw[3] && sw[2] && sw[0]) ||
(sw[4] && sw[1] && sw[0]) ||
(sw[4] && sw[2] && sw[0]) ||
(sw[4] && sw[3] && sw[1]) ||
(sw[3] && sw[2] && sw[1]) ||
(sw[4] && sw[3] && sw[2]) || 
<<<<<<< HEAD
(sw[4] && sw[2] && sw[1]);
=======
        (sw[4] && sw[2] && sw[1]);
>>>>>>> 12e5eb64eb1a48541cb4961af41636cb8cefedc8

endmodule
