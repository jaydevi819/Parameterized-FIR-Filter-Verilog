`timescale 1ns/1ps

module fir_tb3;

reg clk;
reg reset;
reg signed [15:0] x_in;
wire signed [15:0] y_out;

integer i;

fir_filter2 DUT(
    .clk(clk),
    .reset(reset),
    .x_in(x_in),
    .y_out(y_out)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    x_in = 0;

    // Reset
    #20;
    reset = 0;

    //=========================================
    // Test 1 : Impulse
    //=========================================
    $display("Impulse Test");

    x_in = 16'sd32767;
    #10;
    x_in = 16'sd0;

    repeat(20)
        #10;

    //=========================================
    // Test 2 : Step
    //=========================================
    $display("Step Test");

    x_in = 16'sd10000;

    repeat(20)
        #10;

    //=========================================
    // Test 3 : Ramp
    //=========================================
    $display("Ramp Test");

    for(i=0; i<32; i=i+1)
    begin
        x_in = i * 500;
        #10;
    end

    // Return to zero
    x_in = 0;

    #100;

    $finish;

end

endmodule
