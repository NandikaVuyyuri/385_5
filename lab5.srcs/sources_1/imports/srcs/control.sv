module control (
	input logic			clk, 
	input logic			reset,

	input logic  [15:0]	ir,
	input logic			ben,
    input logic[3:0]     opcode,

	input logic 		continue_i,
	input logic 		run_i,
    input logic [15:0] pc_gate,	
   input logic [15:0] bus,	
    input logic [15:0] gate_alu,	
   input logic [15:0] gate_marmux,	
	

    input   logic [15:0]    sr1_,
    input   logic [15:0]    sr2_,
    input   logic [15:0]    dr_in,
//    input   logic [15:0]    ld_reg,
    input   logic [15:0]    sext,
    
    input  logic [15:0]     pc_in,
	
	output logic [15:0]       mar,
    output logic [15:0]       mdr,
//    output              sig_output,

	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic		ld_pc,
	output logic        ld_led,
						
	output logic		gate_pc,
	output logic		gate_mdr,
						
	output logic [1:0]	pcmux,
	
	//You should add additional control signals according to the SLC-3 datapath design

	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena,  // Mem Write Enable
	
	output  logic [15:0]   pc_out,
	output  logic [15:0]   ld_reg,
	
    output  logic [15:0] dr_out
	
);
   
    logic  cc_signal;
    logic  mar_ = mar;
    //logic ld_reg_local = ld_reg;


	enum logic [4:0] {
		halted, 
		pause_ir1,
		pause_ir2, 
		s_18, 
		s_33_1,
		s_33_2,
		s_33_3,
		s_35
	} state, state_nxt;   // Internal state logic


	always_ff @ (posedge clk)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
	end
   

always_comb
begin
    case (opcode)
        0001:  // ADD
        begin
            if (ir[5] == 1'b0)
                dr_out = sr1_ + sr2_;
            else
                dr_out = sr1_ + sext;
            ld_reg = 1'b1;
        end

        0101:  // AND
        begin
            if (ir[5] == 1'b0)
                dr_out = sr1_ & sr2_;
            else
                dr_out = sr1_ & sext;
            ld_reg = 1'b1;
        end

        0000:  // BR
        begin
            if (ben)
                pcmux = 2'b01;
            ld_pc = 1'b1;
        end

        1100:  // JMP
        begin
            pcmux = 2'b10;
            ld_pc = 1'b1;
        end

        0100:  // JSR / JSRR
        begin
            if (ir[11] == 1'b1)
                pcmux = 2'b01;
            else
                pcmux = 2'b10;
            ld_pc = 1'b1;
        end

        0010:  // LD
        begin
            ld_mar = 1'b1;
            pcmux = 2'b01;
            ld_pc = 1'b1;
            state_nxt = s_33_1;
        end

        1010:  // LDI
        begin
            ld_mar = 1'b1;
            pcmux = 2'b01;
            ld_pc = 1'b1;
            state_nxt = s_33_1;
        end

        0110:  // LDR
        begin
            ld_mar = 1'b1;
            ld_pc = 1'b1;
            state_nxt = s_33_1;
        end

        1110:  // LEA
        begin
            dr_out = pc_in + sext;
            ld_reg = 1'b1;
        end

        1001:  // NOT
        begin
            dr_out = ~sr1_;
            ld_reg = 1'b1;
        end

        0011:  // ST
        begin
            ld_mar = 1'b1;
            mdr = sr1_;
            mem_wr_ena = 1'b1;
        end

        1011:  // STI
        begin
            ld_mar = 1'b1;
            state_nxt = s_33_1;
        end

        0111:  // STR
        begin
            ld_mar = 1'b1;
            mdr = sr1_;
            mem_wr_ena = 1'b1;
        end

        1111:  // TRAP
        begin
            ld_mar = 1'b1;
            state_nxt = s_33_1;
        end
    endcase
end



	always_comb
	begin 
		
		// Default controls signal values so we don't have to set each signal
		// in each state case below (If we don't set all signals in each state,
		// we can create an inferred latch)
		ld_mar = 1'b0;
		ld_mdr = 1'b0;
		ld_ir = 1'b0;
		ld_pc = 1'b0;
		ld_led = 1'b0;
		
		gate_pc = 1'b0;
		gate_mdr = 1'b0;
		 
		pcmux = 2'b00;
		
	
		// Assign relevant control signals based on current state
//		if(pc_gate)
//		begin
//		  bus = pc_in;
//		  end
////		else if(gate_alu)
////		  bus = gate_alu;
////		else if(gate_marmux)
////		  bus = gate_marmux;
//		else if(gate_mdr)
//		 bus = mdr;

		case (state)
			halted: ; 
			s_18 : 
				begin 
					gate_pc = 1'b1;
					ld_mar = 1'b1;
					pcmux = 2'b00;
					ld_pc = 1'b1;
				end
			s_33_1, s_33_2, s_33_3 : //you may have to think about this as well to adapt to ram with wait-states
				begin
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
				end
			s_35 : 
				begin 
					gate_mdr = 1'b1;
					ld_ir = 1'b1;
				end
			pause_ir1: ld_led = 1'b1; 
			pause_ir2: ld_led = 1'b1; 
			// you need to finish the rest of state output logic..... 

			//default : ;
		endcase
	end 


	always_comb
	begin
		// default next state is staying at current state
		state_nxt = state;

		unique case (state)
			halted : 
				if (run_i) 
					state_nxt = s_18;
			s_18 : 
				state_nxt = s_33_1; //notice that we usually have 'r' here, but you will need to add extra states instead 
			s_33_1 :                 //e.g. s_33_2, etc. how many? as a hint, note that the bram is synchronous, in addition, 
				state_nxt = s_33_2;   //it has an additional output register. 
			s_33_2 :
				state_nxt = s_33_3;
			s_33_3 : 
				state_nxt = s_35;
			s_35 : 
				state_nxt = pause_ir1;
			// pause_ir1 and pause_ir2 are only for week 1 such that TAs can see 
			// the values in ir.
			pause_ir1 : 
				if (continue_i) 
					state_nxt = pause_ir2;
			pause_ir2 : 
				if (~continue_i)
					state_nxt = s_18;
			// you need to finish the rest of state transition logic.....
			
			default :;
		endcase
	end
