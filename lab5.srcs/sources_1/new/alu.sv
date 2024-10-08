`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module alu(
    input logic clk,
    
    input logic [15:0] A,
    input logic [15:0] B,
    input logic [2:0] aluk, //aluk chooses which operation to do
    
    output logic [15:0] d_out
    );
    
    //values for the aluk mux inputs (00, 01, 10, 11)
    enum logic [2:0] {alu_add, alu_and, alu_not, alu_pass} cur_aluk;
    //hold the outputs of each operation, only the chosen one gets passed out
    logic adder_out;
    logic add_out;
    logic not_out;
    
    alu_adder adder(
        .A  (A),
        .B  (B),
        .d_out    (adder_out)
    );
            
    alu_and ander(
        .A  (A),
        .B  (B),
        .d_out    (and_out)
    );
    
    alu_not noter(
        .A  (A),
        .d_out  (not_out)
    );

//choose what to output based on the aluk     
    always_comb
    begin
        case (aluk) //CHANGE TO cur_aluk WHEN ALWAYS_FF WORKS
        alu_add:
        begin
            d_out = adder_out;
        end
        
        alu_and:
        begin
            d_out = and_out;
        end
        
        alu_not:
        begin
            d_out = not_out;
        end
        
        alu_pass:
        begin
            d_out = A;
        end
        endcase
    end

//update aluk every clock cycle
//    always_ff @(posedge clk)
//    begin
//        cur_aluk <= aluk; //ENUM STUFF BROKEN - PLS FIX
//    end
endmodule


//modules for each operation 
module alu_adder(
    input logic [15:0] A,
    input logic [15:0] B,
    output logic [15:0] d_out
);
    assign d_out = A + B;   
endmodule


module alu_and(
    input logic [15:0] A,
    input logic [15:0] B,
    output logic [15:0] d_out
);
    assign d_out = A & B;
endmodule


module alu_not(
    input logic [15:0] A,
    output logic [15:0] d_out
);
    assign d_out = ~A;
endmodule
