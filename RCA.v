`timescale 10ns / 1ps

module RCA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire c1,c2,c3;
FA FA1(s[0],c1,a[0],b[0],cin);
FA FA2(s[1],c2,a[1],b[1],c1);
FA FA3(s[2],c3,a[2],b[2],c2);
FA FA4(s[3],cout,a[3],b[3],c3);
endmodule

module FA(s,cout,a,b,c);
output s,cout;
input a,b,c;
assign s=a^b^c;
assign cout=(a&b)|(a&c)|(b&c);
endmodule
