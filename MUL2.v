`timescale 10ns / 1ps

module MUL2(
    input [1:0] a,
    input [1:0] b,
    output [3:0] c
    );
    wire w1,w2,w4;
    assign c[0]=(a[0]&b[0]);
    assign w1=(a[1]&b[0]);
    assign w2=(a[0]&b[1]);
    assign w4=(a[1]&b[1]);
    HA H1(carry1,c[1],w1,w2);
    HA H2(c[3],c[2],carry1,w4);
endmodule

module HA(carry,sum,a,b);
       input a,b;
       output carry,sum;
       assign sum=a^b;
       assign carry=a&b;
endmodule