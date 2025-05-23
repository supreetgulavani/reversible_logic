/////////////////////////////////////////////////////////////////////
//  Filename: tb_mux21.sv
//  
//  A Testbench for an Implementation of a 4-bit Adder using 
//  Peres Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module top();

    logic [3:0] A, B;
    logic C;
    logic [3:0] sum;
    logic out;
    logic [11:0] garb;

    adder4peres ap(.*);

    initial begin
        $display("Running a 4-bit Adder using Peres Gate");
        $display("A  |  B  |  C  |  sum  | out  | garb");
        for(int i = 0; i < 16; i++) begin
            A = $urandom_range(0,15);
            B = $urandom_range(0,15);
            C = $urandom_range(0,1);
            #10 $display("%h   |  %h  |  %b  |  %h  |  %h  |  %b  ", A, B, C, sum, out, garb);
        end
    end

endmodule