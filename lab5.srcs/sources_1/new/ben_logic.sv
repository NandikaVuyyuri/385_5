`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module ben_logic(
        input logic [2:0] nzp,  //3 bit nzp
        input logic [15:0] ir,
        output logic ben_logic_out
    );

always_comb
begin
    if( (ir[11] & nzp[2]) | (ir[10] & nzp[1]) | (ir[9] & nzp[0]) ) begin
        ben_logic_out = 1'b1;
    end
    else begin
        ben_logic_out = 1'b0;
    end
    //ben_logic_out = (ir[10] & nzp[1]); //| (ir[10] & nzp[1]) | (ir[9] & nzp[0]);
end //11-2, 10-1, 9-0
endmodule
