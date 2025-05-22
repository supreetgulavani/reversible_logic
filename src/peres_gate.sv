/////////////////////////////////////////////////////////////////////
//  Filename: peres_gate.sv
//  
//  An Implementation of Peres Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module peres_gate(A, B, C, P, Q, R);

    input logic A;
    input logic B;
    input logic C;
    output logic P;
    output logic Q;
    output logic R;

    assign P = A;
    assign Q = A ^ B;
    assign R = (A & B) ^ C;

endmodule