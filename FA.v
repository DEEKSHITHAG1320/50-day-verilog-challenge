`timescale 10ns / 1ps

module FA(
    input a,
    input b,
    input c,
    output s,
    output cout
    );
  wire w1,w2,w3,w4;
  xor g1(w1,a,b);
  xor g2(s,w1,c);
  and g3(w2,a,b);
  and g4(w3,b,c);
  and g5(w4,c,a);
  or g6(cout,w2,w3,w4);
endmodule
