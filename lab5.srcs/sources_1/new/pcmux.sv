`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module pcmux(
    input logic [1:0] pcmux_sig,    //signal
    input logic [15:0] databus,
    input logic [15:0] marmux,
    input logic [15:0] pc_inc,  //pc+1, maybe just input pc?
    
    output logic [15:0] pcmux_out
    );

always_comb
begin
    case(pcmux_sig)
        2'b00:
        begin
            pcmux_out = pc_inc;
        end
        2'b01:
        begin
            pcmux_out = databus;
        end
        2'b10:
        begin
            pcmux_out = marmux;
        end
        2'b11:
        begin
            pcmux_out = 0;
        end
    endcase
end
endmodule
