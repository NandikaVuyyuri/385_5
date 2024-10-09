module register_unit(
    input   logic        clk,
    input   logic        reset,
    input   logic        run_i,
    input   logic        continue_i,
   
    input   logic [15:0]    sr1_in,
    input   logic [15:0]    sr2_in,
    input   logic [15:0]    ld_reg,
    input   logic [15:0]    d_in,
    input   logic [3:0]     dr,  //dr chooses which register to put data inot
    
    output   logic [15:0]    sr1_out,
    output   logic [15:0]    sr2_out
       
 );
 
 //make demux with 8 outputs, connect to 8 registers
 // dr -> 0,1,2,3,4,5,6,7 whatever bit is high corresponds to whatever register should be loaded
    
 //copy this 8 times for 8 registers
 //MAKE SURE load CORRESPONDS WITH dr
 //that way dr controls which register gets loaded with d_in
 load_reg #(.DATA_WIDTH(16)) reg1 (
    .clk    (clk),
    .reset  (reset),

    .load   (), //demux[0] each demux signal says which reg to load
    .data_i (d_in), //load register with data in

    .data_q () //FIX PLS
);
    
    
endmodule
