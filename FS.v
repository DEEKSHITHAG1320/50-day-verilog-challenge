`timescale 10ns / 1ps

module FS(
    input x,
    input y,
    input z,
    output d,
    output b
    );
    wire w1,w2,w3,w4,w5;
    xor g1(w1,x,y);
    xor g2(d,w1,z);
    not g3(w2,x);
    and g4(w3,w2,y);
    and g5(w4,w2,z);
    and g6(w5,y,z);
    or g7(b,w3,w4,w5); 
endmodule
