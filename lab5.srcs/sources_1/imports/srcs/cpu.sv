module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,     //memory read data
    output  logic [15:0] mem_wdata,     //memory write data
    output  logic [15:0] mem_addr,      //memory address
    output  logic        mem_mem_ena,   //memroy read enable
    output  logic        mem_wr_ena //mem write enable
);

// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_pc; 
logic ld_led;
logic ld_cc;
logic ld_ben;
// DATABUS and GATES LOGIC ~~~
logic [15:0] marmux;   //all of these are same as pc, mdr, etc...
logic [15:0] pc;    //pc_out from the pc register
logic [15:0] alu;   //alu output from alu mux
logic [15:0] mdr;
logic [3:0] gate_sig;   //signals what gate goes to databus
logic [15:0] databus;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~

logic [1:0] pcmux_sig; //pcmux signal that determines what goes into pc
logic [15:0] pcmux_data;

logic [15:0] mar;
logic [15:0] ir;
//logic [3:0] opcode;

logic ben;
logic ben_logic_out;
logic [2:0] nzp_in;
logic [2:0] nzp_out;

logic mio_en;
logic [15:0] mdr_mux_out;

assign mem_addr = mar;
assign mem_wdata = mdr;

logic [15:0] sr1_out;
logic [15:0] sr2_out;

logic addr1_sig;        //signals for addr mux
logic [1:0] addr2_sig;

logic [1:0] aluk;   //tells alu which operation to do (2 bit)
logic sr2mux_sig;
logic [15:0] alu_op2;   //second register input for alu

//3 bit inputs for when doing operations
logic [2:0]    sr1_in;  //determined by sr1 mux
logic [1:0]    sr1_sig;
logic [2:0]    sr2_in;  //always ir[2:0]

logic [2:0]    dr;     //determined by dr mux
logic           dr_sig;
logic           ld_reg;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly

control cpu_control (
//~~~INPUTS~~~
    .clk         (clk),
    .reset       (reset),
    .ir          (ir),      //holds the current instruction being executed
    .ben         (ben),     //tells cpu whether a branch should be taken 
    //.opcode      (opcode),
    .continue_i  (continue_i), //resume operation after pause
    .run_i       (run_i),

//~~~OUTPUTS~~~
    .ld_mar      (ld_mar),  
    .ld_mdr      (ld_mdr),
    .ld_ir       (ld_ir),
    .ld_pc       (ld_pc),
    .ld_led      (ld_led),
    .ld_cc       (ld_cc),
    .ld_ben      (ld_ben),

    .pcmux_sig       (pcmux_sig),
    .mem_mem_ena (mem_mem_ena), //enables memory access
    .mem_wr_ena  (mem_wr_ena),
    .ld_reg     (ld_reg),
    .mio_en     (mio_en),
    .gate_sig   (gate_sig),
    .addr1_sig  (addr1_sig),
    .addr2_sig  (addr2_sig),
    
    .aluk   (aluk),
    .sr2mux_sig (sr2mux_sig),
    .sr1_sig    (sr1_sig),
    .dr_sig     (dr_sig)
);

//sr2 is always the same
assign sr2_in = ir[2:0];
register_unit register_unit (   //DONE~~~
    .clk        (clk),
    .reset      (reset),
    
    .d_in       (databus),  //gets input from databus
    .dr         (dr),
    .ld_reg     (ld_reg),
    .sr1_in     (sr1_in),
    .sr2_in     (sr2_in),
    
    .sr1_out    (sr1_out),
    .sr2_out    (sr2_out)
);

sign_extender  sign_extender(   //NOT USED~~~
    .x          (x),
    .sext       (sext)
);

logic [15:0] ir4sext = { {11{ir[4]}}, ir[4:0] };
sr2mux sr2mux(                  //DONE~~~
    .sr2    (sr2_out),
    .sext   (ir4sext),
    .sext_sig   (sr2mux_sig),    //output sr2 when =0, sext when =1
                                //SET BY CONTROL UNIT
    .sr_out (alu_op2)   //2nd register input for alu
);

alu aluer(                        //DONE~~~
    .A      (sr1_out),
    .B      (alu_op2),
    .aluk   (aluk),     //aluk DEPENDS ON OPCODE, COMES FROM CONTROL
    .d_out  (alu)
);

databus_demux databus_demuxer(  //DONE~~~
    .gate_sig       (gate_sig),
    
    .gate_marmux    (marmux),       //gate_sig = 1000
    .gate_pc        (pc),     //0100
    .gate_alu       (alu),    //0010
    .gate_mdr       (mdr),    //0001
   
    .final_gate     (databus)
);

addr_mux addr_mux(              //DONE~~~
    .addr1_sig  (addr1_sig), //0 for pc, 1 for sr1
    .addr2_sig  (addr2_sig), //2 bit
    .sr1        (sr1_out), //mux 1
    .pc         (pc),  //mux 1
    .ir         (ir),  //mux 2
    
    .marmux_out (marmux)
);

pcmux pcmuxer(                  //DONE~~~
    .pcmux_sig  (pcmux_sig),    //signal
    .databus    (databus),
    .marmux (marmux),
    .pc_inc (pc+1),  //pc+1, maybe just input pc?
    
    .pcmux_out  (pcmux_data)
);

mdr_mux mdr_mux(
    .mio_en     (mio_en), //signal that comes from control unit
    .databus    (databus),
    .rdata      (mem_rdata),
    .mdr_mux_out    (mdr_mux_out)
);

sr1_in_mux sr1_in_mux(
    .sr1_sig    (sr1_sig), //COMES FROM CONTROL - 00 for ir[11:9] (str sr), 01 for ir[8:6] (normal), 10 for sr1 = 110
    .ir         (ir),
    
    .sr1_final  (sr1_in)
);

dr_mux dr_mux(
    .dr_sig     (dr_sig), //comes from control
    .ir         (ir),
    
    .dr_final   (dr)
);

nzp_logic nzp_logic(
    .databus    (databus),
    .nzp_new    (nzp_in)
);

ben_logic ben_logic(
    .nzp        (nzp_out),
    .ir         (ir),
    
    .ben_logic_out  (ben_logic_out)
);

//switches displayed on LEDs 
assign led_o = ir;
assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (databus), //load ir register with databus

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(pcmux_data), //load pc with pc+1, in 5.2 change this to pcmux_data

    .data_q(pc)
);

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mar),
    .data_i(databus),

    .data_q(mar)
);

load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mdr),
    .data_i(mdr_mux_out),

    .data_q(mdr)
);

load_reg #(.DATA_WIDTH(3)) nzp_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_cc),
    .data_i(nzp_in),    //have mux to calculate nzp in

    .data_q(nzp_out)
);

load_reg #(.DATA_WIDTH(1)) ben_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_ben),
    .data_i(ben_logic_out), //ben logic gets loaded when ld_ben is set

    .data_q(ben)
);

// from before wrote mar and mdr registers
//always_ff @(posedge clk) 
//    begin
//    if (reset) 
//    begin
//        mar <= 16'b0; 
//    end 
//    else if (ld_mar) 
//    begin
//        mar <= pc; // load PC into mar
//    end
//end

//always_ff @(posedge clk) 
//    begin
//    if (reset) 
//    begin
//        mdr <= 16'b0; 
//    end 
//    else if (ld_mdr) 
//    begin
//        mdr <= mem_rdata; //load data to mdr
//    end
//end

endmodule