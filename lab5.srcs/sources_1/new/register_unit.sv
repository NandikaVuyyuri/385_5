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
 logic [15:0] out0, out1, out2, out3, out4, out5, out6, out7;

 // dr -> 0,1,2,3,4,5,6,7 whatever bit is high corresponds to whatever register should be loaded
 demux_reg demuxer_gen(
    .demux_in   (dr),
    .demux_out  (demux)
 );


load_reg #(.DATA_WIDTH(16)) reg0 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[0]), //each demux signal says which reg to load
    .data_i (d_in),     //load register with data in

    .data_q (out0)   //outputs are kept as variables inside reg unit
                     //then assigned to sr1 or sr2 depending on sr_in
);

load_reg #(.DATA_WIDTH(16)) reg1 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[1]),
    .data_i (d_in),

    .data_q (out1)
);

load_reg #(.DATA_WIDTH(16)) reg2 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[2]),
    .data_i (d_in),

    .data_q (out2)
);

load_reg #(.DATA_WIDTH(16)) reg3 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[3]),
    .data_i (d_in),

    .data_q (out3)
);

load_reg #(.DATA_WIDTH(16)) reg4 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[4]),
    .data_i (d_in),

    .data_q (out4)
);

load_reg #(.DATA_WIDTH(16)) reg5 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[5]),
    .data_i (d_in),

    .data_q (out5)
);

load_reg #(.DATA_WIDTH(16)) reg6 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[6]),
    .data_i (d_in),

    .data_q (out6)
);

load_reg #(.DATA_WIDTH(16)) reg7 (
    .clk    (clk),
    .reset  (reset),

    .load   (demux[7]),
    .data_i (d_in),

    .data_q (out7)
);

//determine what register output gets put into sr1_out and sr2_out
always_comb
begin  
    case(sr1_in)
        3'b000:
        begin
            sr1_out = out0;
        end
        3'b001:
        begin
            sr1_out = out1;
        end
        3'b010:
        begin
            sr1_out = out2;
        end
        3'b011:
        begin
            sr1_out = out3;
        end
        3'b100:
        begin
            sr1_out = out4;
        end
        3'b101:
        begin
            sr1_out = out5;
        end
        3'b110:
        begin
            sr1_out = out6;
        end
        3'b111:
        begin
            sr1_out = out7;
        end
    endcase
    
    case(sr2_in)
        3'b000:
        begin
            sr2_out = out0;
        end
        3'b001:
        begin
            sr2_out = out1;
        end
        3'b010:
        begin
            sr2_out = out2;
        end
        3'b011:
        begin
            sr2_out = out3;
        end
        3'b100:
        begin
            sr2_out = out4;
        end
        3'b101:
        begin
            sr2_out = out5;
        end
        3'b110:
        begin
            sr2_out = out6;
        end
        3'b111:
        begin
            sr2_out = out7;
        end
    endcase
end
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
