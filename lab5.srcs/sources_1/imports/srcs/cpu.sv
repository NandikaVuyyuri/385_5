module cpu (
    input   logic        clk,
    input   logic        reset,


    input   logic [2:0]    sr1_in,  //3 bit inputs for when doing operations
    input   logic [2:0]    sr2_in,
    input   logic [15:0]    dr,
    input   logic [15:0]    ld_reg,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,     //memory read data
    output  logic [15:0] mem_wdata,     //memory write data
    output  logic [15:0] mem_addr,      //memory address
    output  logic        mem_mem_ena,   //memroy read enable
    output  logic        mem_wr_ena, //mem write enable
    output   logic [15:0] pc_gate     //memory read data

);


// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_pc; 
logic ld_led;
// DATABUS and GATES LOGIC ~~~
logic [15:0] gate_marmux;   //all of these are same as pc, mdr, etc...
logic [15:0] gate_pc;       //they just have gate in front to show that they are put onto data bus
logic [15:0] gate_alu;
logic [15:0] gate_mdr;
logic [15:0] gate_sig;  //signal for which gate to put onto databus
logic [15:0] databus;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~
assign gate_pc = pcmux_data; //pc that goes to databus
assign gate_mdr = mdr;

logic [1:0] pcmux_sig; //pcmux signal that determines what goes into pc
logic [15:0] pcmux_data;

logic [15:0] mar;
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;    //pc_out from the pc register
logic ben;

assign mem_addr = mar;
assign mem_wdata = mdr;

logic [15:0] sr1_out;
logic [15:0] sr2_out;

logic [3:0] gate_sig;   //signals what gate goes to databus
logic addr1_sig;        //signals for addr mux
logic [1:0] addr2_sig;

logic [1:0] aluk;   //tells alu which operation to do (2 bit)
logic [15:0] alu_op2;   //second register input for alu

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
    .opcode      (ir[3:0]),
    .continue_i  (continue_i), //resume operation after pause
    .run_i       (run_i),

    .gate_alu    (gate_alu),
    .gate_marmux (gate_marmux),
    .sr1_       (sr1_out),
    .sr2_       (sr2_out),
    .dr_in      (dr),

//~~~OUTPUTS~~~
    .mar        (),
    .mdr        (),
    .sig_output     (),
    .ld_mar      (ld_mar),  
    .ld_mdr      (ld_mdr),
    .ld_ir       (ld_ir),
    .ld_pc       (ld_pc),
    .ld_led      (ld_led),

    .gate_pc     (gate_pc), //allows PC output to be sent to bus
    .gate_mdr    (gate_mdr), //allows mdr output to be sent to bus

    .pcmux_sig       (pcmux_sig),
    .mem_mem_ena (mem_mem_ena), //enables memory access
    .mem_wr_ena  (mem_wr_ena),
    //.pc_out     (),   //not used
    .ld_reg     (ld_reg),
    //.dr_out     (),
    .gate_sig   (gate_sig),
    .addr1_sig  (addr1_sig),
    .addr2_sig  (addr2_sig),
    
    .aluk   (aluk)
);

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

logic [15:0] ir4sext = ir[4:0];
sr2mux sr2mux(                  //DONE~~~
    .sr2    (sr2_out),
    .sext   (ir4sext),
    
    .sr_out (alu_op2)   //2nd register input for alu
);

alu alu(                        //DONE~~~
    .A      (sr1_out),
    .B      (alu_op2),
    .aluk   (aluk),     //aluk DEPENDS ON OPCODE, COMES FROM CONTROL
    .d_out  (gate_alu)  //SHOULD THIS GO TO gate_alu, OR DEPEND ON gate_alu ??
);

databus_demux databus_demuxer(  //DONE~~~
    .gate_sig       (gate_sig),
    
    .gate_marmux    (gate_marmux), //1000
    .gate_pc        (gate_pc),     //0100
    .gate_alu       (gate_alu),    //0010
    .gate_mdr       (gate_mdr),    //0001
   
    .final_gate     (databus)
);

addr_mux addr_mux(              //DONE~~~
    .addr1_sig  (addr1_sig), //0 for pc, 1 for sr1
    .addr2_sig  (addr2_sig), //2 bit
    .sr1        (sr1_out), //mux 1
    .pc         (gate_pc),  //mux 1
    .ir         (ir),  //mux 2
    
    .marmux_out (gate_marmux)
);

pcmux pcmuxer(                  //DONE~~~
    .pcmux_sig  (pcmux_sig),    //signal
    .databus    (databus),
    .marmux (gate_marmux),
    .pc_inc (pc+1),  //pc+1, maybe just input pc?
    
    .pcmux_out  (pcmux_data)
);

//whats displayed on LEDs 
assign led_o = pc;
assign hex_display_debug = pc;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (mdr), //load ir register with mdr

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(pcmux_data), //load pc with pc+1, in 5.2 change this to pcmux_data

    .data_q(pc)
);

always_ff @(posedge clk) 
    begin
    if (reset) 
    begin
        mar <= 16'b0; 
    end 
    else if (ld_mar) 
    begin
        mar <= pc; // load PC into mar
    end
end

always_ff @(posedge clk) 
    begin
    if (reset) 
    begin
        mdr <= 16'b0; 
    end 
    else if (ld_mdr) 
    begin
        mdr <= mem_rdata; //load data to mdr
    end
end

endmodule