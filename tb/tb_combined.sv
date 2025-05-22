/////////////////////////////////////////////////////////////////////
//  Filename: tb_peres_gate.sv
//  
//  A Testbench for an Implementation of Peres Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/23/2025
/////////////////////////////////////////////////////////////////////

`define TB_FREDKIN
//`define TB_PERES
//`define TB_TOFFOLI

module top();
    
    logic A, B, C;          // Inputs
    logic P, Q, R;          // Outputs

    `ifdef TB_FREDKIN
        fredkin_gate fg(.*);    // Fredkin Gate Module Instantiation
  		initial begin
          $display("Running Fredkin Gate...");
        end
    `elsif TB_PERES
        peres_gate pg (.*);     // Peres Gate Module Instantiation
  		initial begin
          $display("Running Peres Gate...");
        end
    `elsif TB_TOFFOLI
        toffoli_gate(.*);       // Toffoli Gate Module Instantiation
  		initial begin
          $display("Running Toffoli Gate...");
        end
    `else 
        initial begin
            $display("damn bro! uncomment sum");
        end
    `endif


    initial begin
        
        $display("A | B | C | P | Q | R");
        $display("----------------------");

        for (int i = 0; i < 8; i++) begin
            {A, B, C} = i[2:0]; 
            #5 $display("%b | %b | %b | %b | %b | %b", A, B, C, P, Q, R);
        end
    end

endmodule