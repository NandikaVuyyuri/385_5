`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module nzp_logic(
    input logic [15:0] databus, //databus holds ir
    
    output logic [3:0] nzp_new  //nzp based on the cur databus/ir
    );
    
always_comb
begin
    //check if databus is positive, negative, or 0
    if(databus > 0) begin
        nzp_new = 3'b001;
    end
    else if(databus < 0) begin
        nzp_new = 3'b100;
    end
    else if(databus == 0) begin
        nzp_new = 3'b010;
    end
    else begin
        nzp_new = 3'b000;
    end
end
endmodule
