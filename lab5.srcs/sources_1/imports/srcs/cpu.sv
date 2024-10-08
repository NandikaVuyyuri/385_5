module cpu (
    input   logic        clk,
    input   logic        reset,


    input   logic [15:0]    sr1_in,
    input   logic [15:0]    sr2_in,
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

logic gate_pc;  //signals for when to put pc, mdr, etc onto databus,
    //OR should these be more like temp variables that hold pc, mdr, etc and later databus=gate??
logic gate_mdr;

logic [1:0] pcmux;

logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;
logic ben;
logic [15:0] bus;

logic pcmux_data;

assign mem_addr = mar;
assign mem_wdata = mdr;

logic [15:0] sr1_out;
logic [15:0] sr2_out;

logic [15:0] alu_sr2;   //second register input for alu

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly

control cpu_control (
    .clk         (clk),
    .reset       (reset),
    .run_i       (run_i),
    .continue_i  (continue_i), //resume operation after pause
    .ir          (ir),      //holds the current instruction being executed
    .ben         (ben),     //tells cpu whether a branch should be taken 

    .ld_mar      (ld_mar),  
    .ld_mdr      (ld_mdr),
    .ld_ir       (ld_ir),
    .ld_pc       (ld_pc),
    .ld_led      (ld_led),

    .gate_pc     (gate_pc), //allows PC output to be sent to bus
    .gate_mdr    (gate_mdr), //allows mdr output to be sent to bus
    .gate_alu    (gate_alu),
    .gate_marmux (gate_marmux),

    .pcmux       (pcmux),
    .mem_mem_ena (mem_mem_ena), //enables memory access
    .mem_wr_ena  (mem_wr_ena)
);

register_unit register_unit (
    .clk        (clk),
    .reset      (reset),
    .run_i      (run_i),
    .continue_i (continue_i),
    
    .sr1_in     (sr1_in),
    .sr2_in     (sr2_in),
    .dr         (dr),
    .ld_reg     (ld_reg),
    
    .sr1_out    (sr1_out),
    .sr2_out    (sr2_out)
);

sign_extender  sign_extender(
    .x          (x),
    .sext       (sext)

);

sr2mux sr2mux(
    .clk    (clk),
    .sr2    (sr2_out),
    .sext   (sext),
    
    .sr_out (alu_sr2)   //2nd register input for alu
);

alu alu(
    .clk    (clk),
    .A      (),
    .B      (alu_sr2),
    .aluk   (),     //PLS FIX - aluk DEPENDS ON OPCODE, COMES FROM CONTROL
    .d_out  ()  //SHOULD THIS GO TO gate_alu, OR DEPEND ON gate_alu ??
);


assign led_o = ir;
assign hex_display_debug = ir;

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
    .data_i(pc + 1), //load pc with pc+1, in 5.2 change this to pcmux_data

    .data_q(pc)
);


always_comb begin
		if(pc_gate)
		  bus = pc;
//		else if(gate_alu)
//		  bus = gate_alu;
//		else if(gate_marmux)
//		  bus = gate_marmux;
		else if(gate_mdr)
		 bus = mdr;

end


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


//contents of IR are displayed on LEDs 
assign led_o = ir;
assign hex_display_debug = ir;


endmodule