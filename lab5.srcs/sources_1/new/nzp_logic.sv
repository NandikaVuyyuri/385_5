`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module nzp_logic(
    input logic [15:0] databus, //databus holds ir
    
    output logic [3:0] nzp_new  //nzp based on the cur databus/ir
    );
    
    assign nzp_new = databus[11:9];
endmodule
