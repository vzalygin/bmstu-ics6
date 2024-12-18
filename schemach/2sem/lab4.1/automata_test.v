`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:54:28 11/29/2024
// Design Name:   automata
// Module Name:   /home/user/lab_k/automata_test.v
// Project Name:  lab_k
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: automata
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module automata_test;
	reg clk;
	reg rst;
	reg [7:0] U;
	// Outputs
	wire [2:0] state;
	wire [7:0] C;

	// Instantiate the Unit Under Test (UUT)
	automata uut (
		.rst(rst),
		.clk(clk),
		.U(U),
		.C(C),
		.state(state)
	);
	
	 parameter clk_period = 100;
 
		initial begin
		 clk = 0;
		 forever #(clk_period/2)clk = ~clk;
		end
	
	initial begin
		clk = clk_period;
		  rst = 0;

		  #100

		  rst = 1;
		  #100
		  rst = 0;
		  #100
		  U = 'b00000000;

		  U = 8'b11111111;	//n0 - n0
		  #clk_period
		  U = 8'b00000000; // n0 - n5
		  #clk_period
		  U = 8'b00101000; // n5 - n5
		
		  #clk_period
		  U = 8'b10111000; // n5 - n4
		  #clk_period
		  U = 8'b10101000; // n4 - n0
		  #clk_period
		  U = 8'b00000000; // n0 - n5
		  #clk_period
		  U = 8'b00000010; // n5 - n1
		
		  #clk_period
		  U = 8'b00001000; // n1 - n1
		  #clk_period
		  U = 8'b00001010; // n1 - n5
		  #clk_period
		  U = 8'b00000010; // n5 - n1
		  #clk_period
		  U = 8'b01000001; // n1 - n4
		  #clk_period
		  U = 8'b00000001; // n4 - n4
		  #clk_period
		  U = 8'b00100101; // n4 - n3
		  #clk_period
		  U = 8'b00001101; // n3- n3
		  #clk_period
		  U = 8'b01100100; // n3 - n2
		  #clk_period
		  U = 8'b10000000; // n2 - n2
		  #clk_period
		  U = 8'b01111111; // n2 - n5
		  #clk_period
		  U = 8'b10110111; // n5 - n4
		  #clk_period
		  U = 8'b00100000; // n4 - n3
		  #clk_period
		  U = 8'b00000000; // n3 - n0

	end
      
endmodule

