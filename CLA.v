`timescale 10ns / 1ps
module CLA(
    input c0,
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output c4
    );
    wire [3:0]g,p;
    wire c1,c2,c3; 
    assign p[0]=(a[0]^b[0]),
           p[1]=(a[1]^b[1]),
           p[2]=(a[2]^b[2]),
           p[3]=(a[3]^b[3]);
    assign g[0]=(a[0]&b[0]),
           g[1]=(a[1]&b[1]),
           g[2]=(a[2]&b[2]),
           g[3]=(a[3]&b[3]);
    assign c1=(g[0])|(p[0]&c0),
           c2=(g[1])|(p[1]&g[0])|(p[1]&p[0]&c0),
           c3=(g[2])|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&c0),
           c4=(g[3])|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&c0);
    assign s[0]=p[0]^c0,
           s[1]=p[1]^c1,
           s[2]=p[2]^c2,
           s[3]=p[3]^c3; 
endmodule
