module fir_filter2(
    input clk,
    input reset,
    input signed [15:0] x_in,
    output reg signed [15:0] y_out
);

    reg signed [15:0] x[0:9];
    integer i;

    // FIR coefficients (Q15)
    parameter signed H0 = 16'sd72;
    parameter signed H1 = 16'sd569;
    parameter signed H2 = 16'sd2414;
    parameter signed H3 = 16'sd5447;
    parameter signed H4 = 16'sd7882;
    parameter signed H5 = 16'sd7882;
    parameter signed H6 = 16'sd5447;
    parameter signed H7 = 16'sd2414;
    parameter signed H8 = 16'sd569;
    parameter signed H9 = 16'sd72;

    // Shift register
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            for(i=0;i<10;i=i+1)
                x[i] <= 16'sd0;
        end
        else
        begin
            for(i=9;i>0;i=i-1)
                x[i] <= x[i-1];

            x[0] <= x_in;
        end
    end

    // Multiply
    wire signed [31:0] p0 = x[0]*H0;
    wire signed [31:0] p1 = x[1]*H1;
    wire signed [31:0] p2 = x[2]*H2;
    wire signed [31:0] p3 = x[3]*H3;
    wire signed [31:0] p4 = x[4]*H4;
    wire signed [31:0] p5 = x[5]*H5;
    wire signed [31:0] p6 = x[6]*H6;
    wire signed [31:0] p7 = x[7]*H7;
    wire signed [31:0] p8 = x[8]*H8;
    wire signed [31:0] p9 = x[9]*H9;

    wire signed [35:0] sum;

    assign sum = p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;

    // Output
    always @(posedge clk or posedge reset)
    begin
        if(reset)
            y_out <= 16'sd0;
        else
            y_out <= sum >>> 15;
    end

endmodule