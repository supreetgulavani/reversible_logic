/////////////////////////////////////////////////////////////////////
//  Filename: adder4peres.sv
//  
//  An Implementation of a 4-bit Adder 
//  using Peres Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module adder4peres(A, B, C, sum, out, garb);

    input logic [3:0] A;
    input logic [3:0] B;
    input logic C;
    output logic [3:0] sum;
    output logic out;
    output logic [11:0] garb;

    logic [3:0] P, Q, R;
    logic [2:0] carry;

    peres_gate pg0(
        .A(A[0]),
        .B(B[0]),
        .C(C),
        .P(P[0]),
        .Q(Q[0]),
        .R(R[0])
    );
    assign sum[0] = Q[0] ^ C;
    assign carry[0] = R[0];

    peres_gate pg1(
        .A(A[1]),
        .B(B[1]),
        .C(carry[0]),
        .P(P[1]),
        .Q(Q[1]),
        .R(R[1])
    );
    assign sum[1] = Q[1] ^ carry[0];
    assign carry[1] = R[1];

    peres_gate pg2(
        .A(A[2]),
        .B(B[2]),
        .C(carry[1]),
        .P(P[2]),
        .Q(Q[2]),
        .R(R[2])
    );
    assign sum[2] = Q[2] ^ carry[1];
    assign carry[2] = R[2];

    peres_gate pg3(
        .A(A[3]),
        .B(B[3]),
        .C(carry[2]),
        .P(P[3]),
        .Q(Q[3]),
        .R(R[3])
    );
    assign sum[3] = Q[3] ^ carry[2];
    assign out = R[3];

    //garbage outputs
    assign garb = {P, Q, R};

endmodule


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