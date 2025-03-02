`timescale 10ns/1ns
module main_tb();
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
		  U = 8'b01010010; //N0 -> N0
        click;
        #1000;
		  U = 8'b01000110; //N0 -> N2
        click;
        #1000;
		  U = 8'b00001100; //N2 -> N5
        click;
        #1000;
		  U = 8'b11100100; //N5 -> N4
        click;
        #1000;
        $finish;
    end
endmodule
