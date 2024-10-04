`timescale 10ns / 1ps

module AOI(
    input a,
    input b,
    input c,
    input d,
    output y
    );
    wire w1,w2,w3;
    and g1(w1,a,b);
    and g2(w2,c,d);
    or g3(w3,w1,w2);
    not g4(y,w3);
endmodule
