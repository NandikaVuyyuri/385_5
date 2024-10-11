module control (
	input logic			clk, 
	input logic			reset,

	input logic [15:0]	ir,
	input logic			ben,
    input logic [3:0]   opcode,

	input logic 		continue_i,
	input logic 		run_i,
    input logic [15:0] gate_alu,	
    input logic [15:0] gate_marmux,	
	

    input   logic [15:0]    sr1_,
    input   logic [15:0]    sr2_,
    input   logic [15:0]    dr_in,
//    input   logic [15:0]    ld_reg,
	
	output logic [15:0]       mar,
    output logic [15:0]       mdr,
    output logic [15:0]       sig_output,

	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic		ld_pc,
	output logic        ld_led,
						
	output logic		gate_pc,
	output logic		gate_mdr,
	output logic [15:0] marmux_out,
    output  logic [15:0] mem_addr,      //memory address

						
	output logic [1:0]	pcmux_sig,
	
	//You should add additional control signals according to the SLC-3 datapath design

	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena,  // Mem Write Enable
	
	//output  logic [15:0]   pc_out,
	output  logic [15:0]   ld_reg,
	
    //output  logic [15:0] dr_out,
    output logic [3:0] gate_sig,
    output logic addr1_sig,
    output logic [1:0] addr2_sig,

    output logic [2:0] aluk
	
);
    logic  cc_signal;
    logic  mar_ = mar;
    logic N, Z, P;  // Declaration of NZP condition codes
    
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
	if (reset) 
		state <= halted;
	else 
		state <= state_nxt;
	//end
   

    case (opcode)
    
        0001:  // ADD
        begin
            state <= s_1;
        end

        0101:  // AND
        begin
            state = s_5;
        end
        
        1001:  // NOT
        begin
            state = s_9;
        end
        
        0110:  // LDR
        begin
            state = s_6;
        end
        
        0111:  // STR
        begin
            state = s_7;
        end
        
        0100:  // JSR 
        begin
            state = s_4;
        end
        
        1100:  // JMP
        begin
            state = s_12;
        end

        0000:  // BR
        begin
            state = s_0;  // Enter the branch state
        end

        1101:  // PAUSE
        begin
        ld_led = 1'b1;
        end

    endcase
//end
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
     
    pcmux_sig = 2'b00;

    //default sig
       gate_sig = 0000;
    case (state)        // PLEASE FIX SIGNALS - CHECK SCHEMATIC CAREFULLY
        halted: ; 
        s_1 :       //add
          begin
            ld_reg = 1'b1;
            sig_output = 1'b1;
            aluk = 2'b00;
            gate_sig = 0010;

            //  condition codes based on result
            if (dr_in == 0) Z = 1; else Z = 0;
            if (dr_in[15] == 1) N = 1; else N = 0;
            if (dr_in[15] == 0 && dr_in != 0) P = 1; else P = 0;
          end
        
        s_5 :       //and
           begin
            ld_reg = 1'b1;
            sig_output = 1'b1;
            gate_sig = 0010;
            aluk = 2'b01;

            //  condition codes based on result
            if (dr_in == 0) Z = 1; else Z = 0;
            if (dr_in[15] == 1) N = 1; else N = 0;
            if (dr_in[15] == 0 && dr_in != 0) P = 1; else P = 0;
           end
           
        s_9 :       //not
           begin
            ld_reg = 1'b1;
            sig_output = 1'b1;
            gate_sig = 0010;
            aluk = 2'b10;

            //  condition codes based on result
            if (dr_in == 0) Z = 1; else Z = 0;
            if (dr_in[15] == 1) N = 1; else N = 0;
            if (dr_in[15] == 0 && dr_in != 0) P = 1; else P = 0;
           end
    //ldr
        s_6 :
           begin

        //load B+off6 into MAR
        
            ld_mar= 1'b0;
            //mdr= mar
        //M[MAR]->MDR
//        mdr = mem_addr[mar];
        //dr
//        dr_out = mdr;
//        //set cc
//            if (dr_in == 0) Z = 1; else Z = 0;
//            if (dr_in[15] == 1) N = 1; else N = 0;
//            if (dr_in[15] == 0 && dr_in != 0) P = 1; else P = 0;

           end
        s_25_1, s_25_2, s_25_3 : //you may have to think about this as well to adapt to ram with wait-states
           begin
               mem_mem_ena = 1'b1;
               ld_mdr = 1'b1;
               mdr = mem_addr[mar];

           end
        s_27 :
           begin
            //load dr with mdr
            ld_reg = 1'b1;  //ld reg signal
            //set addr mux signals to output mdr
            addr1_sig = 1'b1; //sr1
            addr2_sig = 2'b00;
            gate_sig = 0001; //put mdr onto databus
        //set cc
            if (dr_in == 0) Z = 1; else Z = 0;
            if (dr_in[15] == 1) N = 1; else N = 0;
            if (dr_in[15] == 0 && dr_in != 0) P = 1; else P = 0;
           end
           
    //str
        s_7 :
            begin


        ld_mar= 1'b0;

            end
        s_23 :
            begin
              ld_mdr = 1'b1;


            end
        s_16_1, s_16_2, s_16_3 :
            begin
           mem_wr_ena= 1'b0;
            end
            
    //jsr
        s_4 :
            begin
             pcmux_sig = 2'b01;
            end
        s_21 :
            begin
            pcmux_sig = 2'b00;
            end
    
    //jmp
        s_12 :
            begin
            pcmux_sig = 2'b10;

//            ld_pc = 1'b1;
            end
            
    //br (Branch instruction state)
        s_0 : 
            begin
                // Check BEN based on condition codes (NZP) and instruction bits
                if ((ir[11] & N) | (ir[10] & Z) | (ir[9] & P)) begin
                    // If BEN is true, update PC to branch target address
                    pcmux_sig = 2'b01;  // Select PC + offset
                    ld_pc = 1'b1;   // Load the new PC value
                end
                state_nxt = s_18;  // After branch, go to fetch state
            end

    //fetch
        s_18 : 
            begin 
                gate_pc = 1'b1;
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
                gate_mdr = 1'b1;
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
            state_nxt = s_18;
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
