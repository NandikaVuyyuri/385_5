module alu(

    input   logic        clk,
    input   logic        reset,
    input logic[3:0]     opcode,
    
    input   logic [15:0]    sr1_,
    input   logic [15:0]    sr2_,
    input   logic [15:0]    dr_in,
    input   logic [15:0]    ld_reg,
    input   logic [15:0]    sext,
    
    input  logic [15:0]     pc_in,

	input logic  [15:0]	    ir,
    
       
    input   logic [15:0] mem_rdata,
    
    output logic		ld_mar,
	output logic		ld_mdr,
    
    
    output [15:0]       mar,
    output [15:0]       mdr,
    output              sig_output,
    
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena,
    output  logic [15:0]        pc_out,
    output  logic [15:0] dr_out
    
    );
    
    logic           cc_signal;
    logic  mar_ = mar;

    always_comb
    begin
    case(opcode)
    
        0001:           //ADD
        begin
        dr_out=sr1_+ sext;
        cc_signal = 1;
        end    
      
      
      
        0101:           //AND
        begin
        dr_out=sr1_ & sext;
        cc_signal = 1;
        end
        
        
    
        0000:           //branch
        begin
        end      
            
        1100:           //JUMP
        begin
        dr_out= ir[8:6];
        end     
            
        0100:           //JSR
        begin
        if(ld_mar ==1)
            mar_ <= ir[8:6]+sext[ir[5:0]];
        if(ir[11] == 0) 
            ld_mar = ir[8:6];
        else 
            pc_out = pc_in+sext[ir[10:0]];
       end     
            
            
        0010:           //LD
        begin
        
        ld_mar= pc_in+sext[ir[8:0]] + 1;
        //mdr <= mem_rdata
        cc_signal = 1;

        end
        
        
        1010:           //ldi
        begin
        dr_out= pc_in+sext[ir[8:0]] + 1;
        cc_signal = 1;
        end
    
        0110:           //ldr
        begin
        cc_signal = 1;
    end
    
        
        1110:           //lea
        begin
    end
    
        1001:           //not
        begin
        cc_signal = 1;
        end
        
        
        1000:           //ldr
        begin
        cc_signal = 1;
        end
        
        0011:           //st
        begin
        end
        
        1011:           //sti
        begin
        end
        
        
        0111:           //str
        begin
        end
        
        
        1111:           //trap
        begin
        end
        
        
    endcase
    
    
    //fsm logic
    
     module fsm_1(
     
     
     
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

			default : ;
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
			// the values in ir.
			pause_ir1 : 
				if (continue_i) 
					state_nxt = pause_ir2;
			pause_ir2 : 
				if (~continue_i)
					state_nxt = s_18;
			
			default :;
		endcase
	end
     
     
     )
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  end  
endmodule
