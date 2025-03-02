`timescale 10ns/1ns
module main_tb();
    reg clk=1'b0, count=1'b0, rst=1'b1;
    wire [3:0] a;
    wire [7:0] led;
    wire [1:0] state;
	 reg [7:0] U;
	 wire [2:0] st_to_p;
	 wire [7:0] C_to_p;
    main uut (
	    .clk,
	    .count, 
	    .rst,  
	    .a, 
	    .C_to_print(C_to_p),
	    .state,
		 .U,
		 .state_to_print(st_to_p)
    );

    task click();
        begin
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            #1000
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
            @(posedge clk) count = #1 1'b1;
            @(posedge clk) count = #1 1'b0;
        end
    endtask
    always #10 clk = ~clk;
		
    initial begin
        #200 rst = 1'b0;

			#1000;
			U = 'b00000001; // N0 -> N0
			click;
			U = 'b00000000; // N0 -> N2
			click;
			U = 'b10001100; // N2 -> N2
			click;
			U = 'b01000110; // N2 -> N1
			click;
			U = 'b00010000; // N1 -> N1
			click;
			U = 'b00000000; // N1 -> N3
			click;
			U = 'b00010000; // N3 -> N3
			click;
			U = 'b00110110; // N3 -> N4
			click;
			U = 'b00010000; // N4 -> N5 ??
			click;
			U = 'b00000000; // N5 -> N5
			click;
			U = 'b00001000; // N5 -> N0
			click;
		  
        $finish;
    end
endmodule
