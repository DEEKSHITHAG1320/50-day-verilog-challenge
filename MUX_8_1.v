`timescale 10ns / 1ps
module MUX_8_1(
    input [7:0] i,
    input [2:0] s,
    output y
    );
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    assign w1=((~s[2])&(~s[1])&(~s[0])&i[0]);
    assign w2=((~s[2])&(~s[1])&(s[0])&i[1]);
    assign w3=((~s[2])&(s[1])&(~s[0])&i[2]);
    assign w4=((~s[2])&(s[1])&(s[0])&i[3]);
    assign w5=((s[2])&(~s[1])&(~s[0])&i[4]);
    assign w6=((s[2])&(~s[1])&(s[0])&i[5]);
    assign w7=((s[2])&(s[1])&(~s[0])&i[6]);
    assign w8=((s[2])&(s[1])&(s[0])&i[7]);
    assign y=w1|w2|w3|w4|w5|w6|w7|w8;
endmodule
