/////////////////////////////////////////////////////////////////////
//  Filename: fredkin_gate.sv
//  
//  An Implementation of Fredkin Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module fredkin_gate(A, B, C, P, Q, R);

    input logic A;
    input logic B;
    input logic C;
    output logic P;
    output logic Q;
    output logic R;

    assign P = A;
    assign Q = A ? C : B;
    assign R = A ? B : C;

endmodule