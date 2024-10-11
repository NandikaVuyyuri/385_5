`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module dr_mux(
    input logic dr_sig,   //0 choose ir[11:9], 1 choose dr='111'
    input logic [15:0] ir,
    
    output logic dr_final
    );

always_comb
begin
    case(dr_sig)
        1'b0:
        begin
            dr_final = ir[11:9];
        end
        
        1'b1:
        begin
            dr_final = 3'b111;
        end
    endcase
end
endmodule
