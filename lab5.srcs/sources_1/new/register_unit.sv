module register_unit(
    input   logic        clk,
    input   logic        reset,
    //input   logic        run_i,
    //input   logic        continue_i,
   
    input   logic [15:0]    d_in,   //data to put into a register
    input   logic [2:0]     dr,  //dr chooses which register to put data into
    input   logic [15:0]    ld_reg,
    
    input   logic [2:0]    sr1_in,  //3 bit sr inputs for when doing operations
    input   logic [2:0]    sr2_in,  //SAME AS dr IN THAT IT CHOOSES WHICH REGISTER TO USE
    
    output   logic [15:0]    sr1_out,
    output   logic [15:0]    sr2_out
       
 );
 
 logic [7:0] demux;
 logic [7:0] demux_sr1;
 logic [7:0] demux_sr2;

 // dr -> 0,1,2,3,4,5,6,7 whatever bit is high corresponds to whatever register should be loaded
 demux_reg demuxer_gen(
    .demux_in   (dr),
    .demux_out  (demux)
 );
 //get registers for sr1 and sr2
  demux_reg demuxer_sr1(
    .demux_in   (sr1_in),
    .demux_out  (demux_sr1)
 );
  demux_reg demuxer_sr2(
    .demux_in   (sr2_in),
    .demux_out  (demux_sr2)
 );

 //WIP - HOW TO OUTPUT 2 REGS?? ALONG WITH ONLY 1 REGISTER LOGIC?
 //that way dr controls which register gets loaded with d_in
load_reg #(.DATA_WIDTH(16)) reg0 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[0]), //each demux signal says which reg to load
    .data_i (d_in),     //load register with data in

    .data_q (sr1_out)   //when only using 1 reg, it outputs to sr1
);

load_reg #(.DATA_WIDTH(16)) reg1 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[1]), //each demux signal says which reg to load
    .data_i (d_in),     //load register with data in

    .data_q (sr1_out)   //when only using 1 reg, it outputs to sr1
);
//copy 8 times for 8 registers...
//figure out the sr1 and sr2 conlfict thing FIRST !!!!
  
endmodule

module demux_reg(
    input logic [2:0] demux_in,
    output logic [7:0] demux_out
);

always_comb
begin
    demux_out[7:0] = 0;
    //set bit to 1 depending on dr    
    case(demux_in)
        3'b000:
        begin
            demux_out[0] = 1;
        end
        3'b001:
        begin
            demux_out[1] = 1;
        end
        3'b010:
        begin
            demux_out[2] = 1;
        end
        3'b011:
        begin
            demux_out[3] = 1;
        end
        3'b100:
        begin
            demux_out[4] = 1;
        end
        3'b101:
        begin
            demux_out[5] = 1;
        end
        3'b110:
        begin
            demux_out[6] = 1;
        end
        3'b111:
        begin
            demux_out[7] = 1;
        end
    endcase
end
endmodule
