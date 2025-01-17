`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module alu(    
    input logic [15:0] A,
    input logic [15:0] B,
    input logic [1:0] aluk, //aluk chooses which operation to do
    
    output logic [15:0] d_out
    );
    
    //values for the aluk mux inputs (00, 01, 10, 11)
//    logic alu_add = 2'b00;
//    logic alu_and = 2'b01;
//    logic alu_not = 2'b10;
//    logic alu_pass = 2'b11;
    
    //hold the outputs of each operation, only the chosen one gets passed out
    logic [15:0] adder_out;
    logic [15:0] and_out;
    logic [15:0] not_out;
    
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
        2'b00:
        begin
            d_out = adder_out;
        end
        
        2'b01:
        begin
            d_out = and_out;
        end
        
        2'b10:
        begin
            d_out = not_out;
        end
        
        2'b11:
        begin
            d_out = A;
        end
        endcase
    end

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
    assign d_out =  A & B; //16'b0101010101010101; //<- test
endmodule


module alu_not(
    input logic [15:0] A,
    output logic [15:0] d_out
);
    assign d_out = ~A;
endmodule
