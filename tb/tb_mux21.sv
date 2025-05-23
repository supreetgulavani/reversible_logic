/////////////////////////////////////////////////////////////////////
//  Filename: tb_mux21.sv
//  
//  A Testbench for an Implementation of a 2:1 MUX using 
//  Fredkin Gate in SystemVerilog
//  
//  Author: Supreet Gulavani
//  05/22/2025
/////////////////////////////////////////////////////////////////////

module top();
    logic sel;
    logic ip_1, ip_2;
    logic mux_out;
    logic garbage_1, garbage_2;

    mux21 mux21_inst(.*);

    initial begin
        $display("Running 2:1 MUX using Fredkin Gate");
        $display("sel | ip_1 | ip_2 | mux_out | garbage_1 | garbage_2");
        $display("------------------------------------------------");

        for(int i = 0; i < 10; i++) begin
            sel = $urandom_range(0,1);
            ip_1 = $urandom_range(0,1);
            ip_2 = $urandom_range(0,1);
            #10 $display(" %b  |   %b  |   %b  |    %b    |     %b     |   %b", sel, ip_1, ip_2, mux_out, garbage_1, garbage_2);
        end
    end
endmodule