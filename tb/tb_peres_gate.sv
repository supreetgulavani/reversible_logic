/////////////////////////////////////////////////////////////////////
//  Filename: tb_peres_gate.sv
//  
//  A Testbench for an Implementation of Peres Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

module top();
    
    logic A, B, C;          // Inputs
    logic P, Q, R;          // Outputs

    peres_gate pg (.*);     // Module Instantiation

    initial begin
        
        $display("A | B | C | P | Q | R");
        $display("----------------------");

        for (int i = 0; i < 8; i++) begin
            {A, B, C} = i[2:0]; 
            #5 $display("%b | %b | %b | %b | %b | %b", A, B, C, P, Q, R);
        end
    end

endmodule