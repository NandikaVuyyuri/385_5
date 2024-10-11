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
        sw_i <= 3;
        #10
        run_i <= 1;
        #10
        run_i <= 0;
        #100
        //continue_i <= 1;
        //#10
        //continue_i <= 0;
        //#10
        //continue_i <= 1;
        //#10
        //continue_i <= 0;
        //#50
        reset <= 1;
        #10
        reset <= 0;
        #20
        
        $finish;
    end
endmodule
