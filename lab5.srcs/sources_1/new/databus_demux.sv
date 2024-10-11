`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module databus_demux(
    //takes in the gate signal and all databus values
    input logic [3:0] gate_sig,
    
    input logic [15:0] gate_marmux, //1000
    input logic [15:0] gate_pc,     //0100
    input logic [15:0] gate_alu,    //0010
    input logic [15:0] gate_mdr,    //0001
   
    //outputs databus value corresponding to gate signal
    output logic [15:0] final_gate
    );
    
always_comb
begin
    case(gate_sig)
        4'b1000:
        begin
            final_gate = gate_marmux;
        end
        4'b0100:
        begin
            final_gate = gate_pc;
        end
        4'b0010:
        begin
            final_gate = gate_alu;
        end
        4'b0001:
        begin
            final_gate = gate_mdr;
        end
        
        default:
            final_gate = gate_pc;
    endcase
end
    
endmodule
