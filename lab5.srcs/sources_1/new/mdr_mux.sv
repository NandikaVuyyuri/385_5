`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module mdr_mux(
    input logic mio_en,
    input logic [15:0] databus, //when mio_en = 0
    input logic [15:0] rdata,   //when mio_en = 1
    
    output logic [15:0] mdr_mux_out
    );
    
always_comb
begin
    if(mio_en == 0) begin
        mdr_mux_out = databus;
    end
    else begin
        mdr_mux_out = rdata;
    end 
end
endmodule
