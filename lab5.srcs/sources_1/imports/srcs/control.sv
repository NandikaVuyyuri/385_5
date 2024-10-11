module control (
	input logic			clk, 
	input logic			reset,

	input logic [15:0]	ir,
	input logic			ben,
    //input logic [3:0]   opcode,

	input logic 		continue_i,
	input logic 		run_i,
	
//OUTPUTS~~~~~
	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic		ld_pc,
	output logic        ld_led,
	output logic        ld_cc,

	output logic [15:0] marmux_out,
    output  logic [15:0] mem_addr,      //memory address

	output logic [1:0]	pcmux_sig,
	
	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena,  // Mem Write Enable
	
	output logic          ld_reg,
	output logic          mio_en,
	
    output logic [3:0] gate_sig,
    output logic addr1_sig,
    output logic [1:0] addr2_sig,

    output logic [2:0] aluk,
    output logic sr2mux_sig,
    output logic [1:0] sr1_sig,
    output logic dr_sig
);

    //gate signals for each gate
    logic marmux_sig = 4'b1000;
    logic pc_sig = 4'b0100;
    logic alu_sig = 4'b0010;
    logic mdr_sig = 4'b0001;
    
	enum logic [6:0] {
		halted, 
		s_1,  //add
		s_5,  //and
		s_9,  //not
		
		s_6,      //ldr
		s_25_1,
		s_25_2,
		s_25_3,
		s_27,
		
		s_7,      //str
		s_23,
		s_16_1,
		s_16_2,
		s_16_3,
		
		s_4,  //jsr
		s_21, //jsr 2
		
		s_12, //jmp
		
		s_0,  //br - ben is weird
		s_22,
		
		s_18,     //fetch states start
		s_33_1,
		s_33_2,
		s_33_3,
		s_35,     //fetch states end
		
		s_32, //'default' state in the middle
		
		pause_ir1,
		pause_ir2
	} state, state_nxt;   // Internal state logic


always_ff @ (posedge clk)
begin
//default states
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
    ld_cc = 1'b0;
    
    pcmux_sig = 2'b00;
    mio_en = 1'b1;  //mio_en only changes to 0 in state 23
    //usually always reading memory data into mdr
    gate_sig = 4'b0000;
    addr1_sig = 1'b0;
    addr2_sig = 2'b00;
    
    aluk = 3'b000;
    sr2mux_sig = 1'b0;
    sr1_sig = 2'b01;
    dr_sig = 1'b0;
	
	ld_reg = 1'b0;
	
	mem_mem_ena = 1'b0;
	mem_wr_ena = 1'b0;

    case (state)
        halted: ;
//add
        s_1 :
          begin
            ld_reg = 1'b1;
            aluk = 2'b00;
            gate_sig = alu_sig; //0010;
            ld_cc = 1'b1;
            //sr2 depends on ir (use sr2 or ir4sext)
            sr2mux_sig = ir[5];
          end
//and
        s_5 :
           begin
            ld_reg = 1'b1;
            aluk = 2'b01;
            gate_sig = alu_sig; //0010;
            ld_cc = 1'b1;
            sr2mux_sig = ir[5];
           end
//not
        s_9 :
           begin
            ld_reg = 1'b1;
            aluk = 2'b10;
            gate_sig = alu_sig; //0010;
            ld_cc = 1'b1;
           end
//ldr
        s_6 :   //MAR <- b+off6
           begin
            ld_mar= 1'b1;
            //put b+off6 onto bus
            addr1_sig = 1'b1;
            addr2_sig = 2'b01;
            //set gate_mar
            gate_sig = marmux_sig; //4'b1000;
           end
           
        s_25_1, s_25_2, s_25_3 : //mdr <- m[mar] (mar was loaded in previous state, so now get the memory at that mar)
           begin
               mem_mem_ena = 1'b1;
               ld_mdr = 1'b1;
           end
           
        s_27 :  //dr <- mdr, set cc
           begin
            //load dr with mdr
            ld_reg = 1'b1;  //ld reg signal
            gate_sig = mdr_sig; //0001; //put mdr onto databus
            ld_cc = 1'b1; //set cc
           end
           
 //str
        s_7 :   //MAR <- b+off6
           begin
            ld_mar= 1'b1;
            //put b+off6 onto bus
            addr1_sig = 1'b1;
            addr2_sig = 2'b01;
            //set gate_mar
            gate_sig = marmux_sig;
            
           end
        s_23 :  //MDR <- SR
            begin
             ld_mdr = 1'b1;
             //put sr onto bus
             sr1_sig = 2'b00;   //during this state, sr is at ir[11:9]
//             addr1_sig = 1'b1;    //instead of adding 0
//             addr2_sig = 2'b00;
//             gate_sig = marmux_sig;
            //pass sr1
             aluk = 2'b11;
             gate_sig = alu_sig;
             mio_en = 0;    //get sr from databus
            end
            
        s_16_1, s_16_2, s_16_3 :    // M[mar] <- mdr (memory address was set before in s_7, now just write to it)
            begin
              mem_wr_ena = 1'b1; //enable write to memory
              mem_mem_ena = 1'b1;
            end
            
//jsr
        s_4 :   // r7 <- pc (this is when dr = 111) !
            begin
             dr_sig = 1'b1; //set dr=111
             gate_sig = pc_sig; //put pc onto bus so register unit can get it
             ld_reg = 1'b1;
            end
        s_21 :
            begin
               pcmux_sig = 2'b10;   //have pc get from addrmux output
               addr1_sig = 1'b0;    //add pc
               addr2_sig = 2'b11;   //add offset ir[10:0]
               ld_pc = 1'b1;
            end
    
//jmp
        s_12 :
            begin
            pcmux_sig = 2'b10;  //pc gets from addrmux
            ld_pc = 1'b1;
            addr1_sig = 1'b1;   //add sr1
            addr2_sig = 2'b00;  //add 0
            end
            
//br (Branch instruction state)
        s_0 : ; //next state depends on ben (in other block)
        
        s_22 :
            begin
                pcmux_sig = 2'b10;  //pc gets from addrmux
                ld_pc = 1'b1;
                addr1_sig = 1'b0;   //add pc
                addr2_sig = 2'b10;  //add offset 9
            end
            
//fetch
        s_18 : 
            begin
                //set gate pc
                gate_sig = pc_sig;
                ld_mar = 1'b1;
                pcmux_sig = 2'b00;
                ld_pc = 1'b1;
            end
        s_33_1, s_33_2, s_33_3 : //you may have to think about this as well to adapt to ram with wait-states
            begin
                mem_mem_ena = 1'b1;
                ld_mdr = 1'b1;
            end
        s_35 : 
            begin 
                //set gate mdr
                gate_sig = mdr_sig;
                ld_ir = 1'b1;
            end
            
//pause
        pause_ir1: ld_led = 1'b1; 
        pause_ir2: ld_led = 1'b1;

        default : ;
    endcase
end 
//end

always_comb
begin
	// default next state is staying at current state
	state_nxt = state;

    unique case (state)
        halted : 
            if (run_i) 
                state_nxt = s_18;
        
        //s_32 is where you check what opcode
        s_32 :
            case (ir[15:12])
                4'b0001:  // ADD
                begin
                    state_nxt = s_1;
                end
        
                4'b0101:  // AND
                begin
                    state_nxt = s_5;
                end
                
                4'b1001:  // NOT
                begin
                    state_nxt = s_9;
                end
                
                4'b0110:  // LDR
                begin
                    state_nxt = s_6;
                end
                
                4'b0111:  // STR
                begin
                    state_nxt = s_7;
                end
                
                4'b0100:  // JSR 
                begin
                    state_nxt = s_4;
                end
                
                4'b1100:  // JMP
                begin
                    state_nxt = s_12;
                end
        
                4'b0000:  // BR
                begin
                    state_nxt = s_0;  // Enter the branch state
                end
        
                4'b1101:  // PAUSE
                begin
                    state_nxt = pause_ir1;
                end
                
                default:
                    state_nxt = s_18;
            endcase
        
        //alu operations
        s_1 :
            state_nxt = s_18;
        s_5 :
            state_nxt = s_18;
        s_9 :
            state_nxt = s_18;
            
        //ldr
        s_6 :
            state_nxt = s_25_1;
        s_25_1 :
            state_nxt = s_25_2;
        s_25_2 :
            state_nxt = s_25_3;
        s_25_3 :
            state_nxt = s_27;
        s_27 :
            state_nxt = s_18;
            
        //str
        s_7 :
            state_nxt = s_23;
        s_23 :
            state_nxt = s_16_1;
        s_16_1 :
            state_nxt = s_16_2;
        s_16_2 :
            state_nxt = s_16_3;
        s_16_3 :
            state_nxt = s_18;
        
        //jsr
        s_4 :
            state_nxt = s_21;
        s_21 :
            state_nxt = s_18;
            
        //jmp
        s_12 :
            state_nxt = s_18;
            
        //br
        s_0 :
            if(ben) begin
                state_nxt = s_22;
            end
            
            else begin
                state_nxt = s_18;
            end
        s_22 :
            state_nxt = s_18;
            
        //fetch
        s_18 : 
            state_nxt = s_33_1; // Entering the fetch cycle
        s_33_1 :                 
            state_nxt = s_33_2;   
        s_33_2 :
            state_nxt = s_33_3;
        s_33_3 : 
            state_nxt = s_35;
        s_35 : 
            state_nxt = s_32;

        //pause states
        pause_ir1 : 
            if (continue_i) 
                state_nxt = pause_ir2;
        pause_ir2 : 
            if (~continue_i)
                state_nxt = s_18;
        
        default :;
    endcase
end
	
endmodule
