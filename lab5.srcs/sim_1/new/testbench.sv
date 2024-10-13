//////////////////////////////////////////////////////////////////////////////////

module testbench();
    timeunit 10ns;
    timeprecision 1ns;
    
    logic		clk;
	logic 		reset;

	logic 		run_i;
	logic 		continue_i;
	logic [15:0] sw_i;

	logic [15:0] led_o;
	logic [7:0]  hex_seg_left;
	logic [3:0]  hex_grid_left;
	logic [7:0]  hex_seg_right;
	logic [3:0]  hex_grid_right;
	
	processor_top multipro(.*);
    initial begin
        clk = 0;
    end
    always begin : CLOCK_GENERATION
        #1 clk = ~clk;
    end
    
    initial begin : TEST_VECTORS
        reset <= 0;
        run_i <= 0;
        continue_i <= 0;
        #1
        reset <= 1;
        #10
        reset <= 0;
        sw_i <= 49; //hex 31 = MULTIPLICATION test
        #20
        run_i <= 1;
        #10
        run_i <= 0;
        #100
        //at pause 1 you input first value
        sw_i <= 4'b0010;    //2
        #100
        continue_i <= 1;
        #10
        continue_i <= 0;
        #100
        //at pause 2 you input second value
        sw_i <= 4'b0011;    //3
        #50
        continue_i <= 1;
        #10
        continue_i <= 0;
        #200
        //output should be 0011 xor 1010 = 1001 = hex 9
        
        $finish;
    end
endmodule
