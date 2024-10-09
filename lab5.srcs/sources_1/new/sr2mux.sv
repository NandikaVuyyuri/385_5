`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module sr2mux(
    input logic [15:0] sr2,
    input logic [15:0] sext,
    input logic sext_sig,   //when =1, output sext
    
    output logic [15:0] sr_out
    );
    
    logic cur_sext;
    
    always_comb
    begin
        if(sext_sig) begin
            sr_out = sext;
        end
        else begin
            sr_out = sr2;
        end
    end
    
endmodule
