`timescale 1ns / 1ps
module automata_test;

reg clk;
reg rst;
reg [7:0] U;
wire [7:0] C;

automata automata1(
	.clk(clk),
	.rst(rst),
	.U(U),
	.C(C)
);

parameter clk_period = 100;

initial begin
	clk = 0;
	forever #(clk_period/2) clk = ~clk;
end

initial begin
	clk = clk_period;
	rst = 0;
	#100
	rst = 1;
	#100
	rst = 0;
	#100
	
	// Первая петля
	U = 'b00000001; // N0 -> N0
	#clk_period;
	U = 'b00000000; // N0 -> N2
	#clk_period;
	U = 'b10001100; // N2 -> N2
	#clk_period;
	U = 'b01000110; // N2 -> N1
	#clk_period;
	U = 'b00010000; // N1 -> N1
	#clk_period;
	U = 'b00000000; // N1 -> N3
	#clk_period;
	U = 'b00010000; // N3 -> N3
	#clk_period;
	U = 'b00110110; // N3 -> N4
	#clk_period;
	U = 'b00010000; // N4 -> N5 ??
	#clk_period;
	U = 'b00000000; // N5 -> N5
	#clk_period;
	U = 'b00001000; // N5 -> N0
	#clk_period;
	
	// Третья петля
	U = 'b00000000; // N0 -> N2
	#clk_period;
	U = 'b11000000; // N2 -> N3
	#clk_period;
	U = 'b00010110; // N3 -> N4
	#clk_period;
	U = 'b00011000; // N4 -> N1 ??
	#clk_period;
	U = 'b00000000; // N1 -> N3
	#clk_period;
	U = 'b00100010; // N3 -> N2
	#clk_period;
	U = 'b11000000; // N2 -> N3
	#clk_period;
	U = 'b00110110; // N3 -> N4
	#clk_period;
	U = 'b00000000; // N4 -> N0
	#clk_period;
	
	rst = 1;
end

endmodule
