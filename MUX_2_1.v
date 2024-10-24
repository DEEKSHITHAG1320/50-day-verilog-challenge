`timescale 10ns / 1ps
module MUX_2_1(
    input [1:0] i,
    input s,
    output y
    );
    assign  y=((~s)&i[0])|(s&i[1]);
endmodule
