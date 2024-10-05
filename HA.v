`timescale 10ns / 1ps


module HA(
    input a,
    input b,
    output s,
    output c
    );
    xor g1(s,a,b);
    and g2(c,a,b);
    
endmodule
