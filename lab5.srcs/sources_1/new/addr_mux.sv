`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module addr_mux(
    //mux signals
    input logic addr1_sig, //0 for pc, 1 for sr1
    input logic [1:0] addr2_sig, //2 bit
    input logic [15:0] sr1, //mux 1
    input logic [15:0] pc,  //mux 1
    input logic [15:0] ir,  //mux 2
    
    output logic [15:0] marmux_out
);

logic [15:0] mux1_out;
logic [15:0] mux2_out;

//get addr1mux output
addr1mux addr1mux(
    .addr1_sig  (addr1_sig),
    .sr1        (sr1),
    .pc         (pc),
    .mux1_out   (mux1_out)
);

//get addr2mux output
addr2mux addr2mux(
    .addr2_sig  (addr2_sig),
    .ir         (ir),
    .mux2_out   (mux2_out)
);

//add together for final output
assign marmux_out = mux1_out + mux2_out;
endmodule

module addr1mux(
    input logic addr1_sig,
    input logic [15:0] sr1,
    input logic [15:0] pc,
    
    output logic [15:0] mux1_out
);

always_comb
begin
    //0 for pc
    if(addr1_sig == 0) begin
        mux1_out = pc;
    end
    //1 for sr1
    else begin
        mux1_out = sr1;
    end
end
endmodule


module addr2mux(
    input logic [1:0] addr2_sig,
    input logic [15:0] ir,
    
    output logic [15:0] mux2_out
);

always_comb
begin
    case(addr2_sig)
        2'b00:
        begin
            mux2_out = 0;
        end
        2'b01:
        begin
            mux2_out = ir[5:0]; //sext ir 5:0
        end
        2'b10:
        begin
            mux2_out = ir[8:0]; //sext ir 8:0
        end
        2'b11:
        begin
            mux2_out = ir[10:0]; //sext ir 10:0
        end
    endcase
end
endmodule