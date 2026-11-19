module main(
        input clk,[0:0] rst,
        output [8:0] leds
        );


always @ (posedge(clk), posedge(rst))	// When will Always Block Be Triggered
begin
    if (rst) //fill in the blank here
        // How Output reacts when Reset Is Asserted
        leds <= 8'b00000000; 
    else
        // How Output reacts when Rising Edge of Clock Arrives?
        leds <= count + 'b1;  ment the counter
end

localparam constantNumber = 50000000;

reg [31:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 32'b0; // reset button asserted
    else if (count == constantNumber - 1) // last count number has been reached
        count <= 32'b0;
    else
        count <= count + 1; // else keep counting 
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div <= 1'b0;
    else if (count == constantNumber - 1) // if constant is reached then flip the clock.
        clk_div <= ~clk_div;
    else
        clk_div <= clk_div; // else keep counting
end

endmodule
