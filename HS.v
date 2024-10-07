`timescale 10ns / 1ps

module HS(
    input x,
    input y,
    output d,
    output b
    );
    wire w;
    xor g1(d,x,y);
    not g2(w,x);
    and g3(b,w,y);
endmodule
