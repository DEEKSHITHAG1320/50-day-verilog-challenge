`timescale 10ns / 1ps
module MUL43(
    input [3:0] a,
    input [2:0] b,
    output [6:0] c
    );
    wire [3:0]x,y,z,p;
    wire cin,cout,c0;
    assign cin=1'b0;
    assign c[0]=a[0]&b[0];
    assign p[3]=1'b0;
    assign x[3]=1'b0,
           x[2]=a[1]&b[0],
           x[1]=a[2]&b[0],
           x[0]=a[1]&b[0];
    assign y[3]=a[3]&b[1],
           y[2]=a[2]&b[1],
           y[1]=a[1]&b[1],
           y[0]=a[0]&b[1];
    assign z[3]=a[3]&b[2],
           z[2]=a[2]&b[2],
           z[1]=a[1]&b[2],
           z[0]=a[0]&b[2];
    RCA R1(.cout(cout), .s({p[2:0],c[1]}),.a(x[3:0]), .b(y[3:0]), .cin(cin));
    RCA R2(.cout(c[6]), .s(c[5:2]), .a({p[3],p[2:0]}), .b(z[3:0]), .cin(cout));
endmodule

module RCA(cout,s,a,b,cin);
input [3:0]a,b;
input cin;
output cout;
output [3:0]s;
FA F1(c1,s[0],a[0],b[0],cin);
FA F2(c2,s[1],a[1],b[1],c1);
FA F3(c3,s[2],a[2],b[2],c2);
FA F4(cout,s[3],a[3],b[3],c3);
endmodule

module FA(cout,s,a,b,c);
input a,b,c;
output cout,s;
assign s=a^b^c;
assign cout=(a&b)|(a&c)|(b&c);
endmodule
