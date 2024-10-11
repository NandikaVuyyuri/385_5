`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module sr1_in_mux(
    input logic [1:0] sr1_sig, //00 for ir[11:9] (str sr), 01 for ir[8:6] (normal), 10 for sr1 = 110
    input logic [15:0] ir,
    
    output logic [2:0] sr1_final
    );

always_comb
begin
    case(sr1_sig)
        2'b00:
        begin
            sr1_final = ir[11:9];
        end
        
        2'b01:
        begin
            sr1_final = ir[8:6];
        end
        
        2'b10:
        begin
            sr1_final = 3'b100;
        end
    endcase
end    
endmodule
