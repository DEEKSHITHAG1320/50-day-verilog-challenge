`timescale 10ns / 1ps
module MOORE_TB();
reg X, clk, rst;
wire y;
MOORE uut (.X(X), .clk(clk), .rst(rst), .y(y));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        X = 0;
        #10 rst = 0;
        #10 X = 1;
        #10 X = 1;
        #10 X = 0;
        #10 X = 1;
        #10 X = 1;
        #10 X = 1;
        #10 X = 0;
        #10 X = 1;
        #10 X = 1;
        #10 X = 1;
        #200 $stop;
    end
endmodule
