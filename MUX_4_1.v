`timescale 10ns / 1ps
module MUX_4_1(
    input [3:0] i,
    input [1:0] s,
    output y
    );
    wire w1,w2,w3,w4;
    assign w1=((~s[1])&(~s[0])&i[0]);
    assign w2=((~s[1])&s[0]&i[1]);
    assign w3=(s[1]&(~s[0])&i[2]);
    assign w4=(s[1]&s[0]&i[3]);
    assign y=w1|w2|w3|w4;
endmodule
