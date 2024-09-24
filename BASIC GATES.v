`timescale 1ns / 1ps

module BASIC_GATES(
    input a,
    input b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output h,
    output i
    );
    and g1(c,a,b);
    or g2(d,a,b);
    not g3(e,a);
    nand g4(f,a,b);
    nor g5(g,a,b);
    xor g6(h,a,b);
    xnor g7(i,a,b);
endmodule
