`timescale 1ns / 1ps

module PAL_TB();
    reg A, B, C, D;       
    wire F1, F2, F3, F4, F5; 
    integer i;
   
    PAL uut (
        .A(A), 
        .B(B), 
        .C(C), 
        .D(D), 
        .F1(F1), 
        .F2(F2), 
        .F3(F3), 
        .F4(F4), 
        .F5(F5)
    );

    initial begin
      
        $display("A B C D | F1 F2 F3 F4 F5");

 
        for (i = 0; i < 16; i = i + 1) begin
            {A, B, C, D} = i; 
            #10;            
            $display("%b %b %b %b | %b  %b  %b  %b  %b", A, B, C, D, F1, F2, F3, F4, F5);
        end

        $finish; 
    end
endmodule

