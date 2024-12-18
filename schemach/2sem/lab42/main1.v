`timescale 10ns/1ns
module main_test();
    reg clk=1'b0, count=1'b0, rst=1'b1;
    wire [3:0] a;
    wire [7:0] led;
    wire [1:0] state;
	 reg [7:0] U;
    main uut (
	    .clk,
	    .count, 
	    .rst,  
	    .a, 
	    .led,
	    .state,
		 .U
    );

    task click;
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
		  
        #1000;
        $finish;
    end
endmodule
