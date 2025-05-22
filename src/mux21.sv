/////////////////////////////////////////////////////////////////////
//  Filename: mux21.sv
//  
//  An Implementation of a 2:1 MUX using Fredkin Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module mux21(sel, ip_1, ip_2, mux_out, garbage_1, garbage_2);

    input logic sel;
    input logic ip_1;
    input logic ip_2;
    output logic mux_out;
    // garbage outputs
    output logic garbage_1;
    output logic garbage_2;

    logic P, Q, R;

    fredkin_gate fg_inst(
        .A(sel),
        .B(ip_1),
        .C(ip_2),
        .P(P),
        .Q(Q),
        .R(R)
    );

    assign mux_out = Q;
    assign garbage_1 = R;
    assign garbage_2 = P;

endmodule