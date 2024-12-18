
module state_machine_test;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] U;

	// Outputs
	wire [7:0] C;

	// Instantiate the Unit Under Test (UUT)
	state_machine uut (
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
		// Initialize Inputs
		clk = clk_period;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#100;
		//  ,   S0
		rst = 1;
		#100;
		rst = 0;
		#100

		// 
		U = 8'b01010010; //N0 -> N0
		#clk_period;
		U = 8'b01000110; //N0 -> N2
		#clk_period;
		U = 8'b00000101; //N2 -> N2
		#clk_period;
		U = 8'b10000000; //N2 -> N0
		#clk_period;

		// 
		U = 8'b00000110; //N0 -> N2
		#clk_period;
		U = 8'b00001100; //N2 -> N5
		#clk_period;
		U = 8'b01010000; //N5 -> N5
		#clk_period;
		U = 8'b00000000; //N5 -> N2
		#clk_period;
		U = 8'b00001100; //N2 -> N5
		#clk_period;
		
		// 
		U = 8'b11100100; //N5 -> N4
		#clk_period;
		U = 8'b01101011; //N4 -> N4
		#clk_period;
		U = 8'b01101010; //N4 -> N3
		#clk_period;
		U = 8'b01001100; //N3 -> N3
		#clk_period;
		U = 8'b00000000; //N3 -> N5
		#clk_period;

		U = 8'b11100100; //N5 -> N4
		#clk_period;
		U = 8'b01101010; //N4 -> N3
		#clk_period;
		
		// 
		U = 8'b01000011; //N3 -> N1
		#clk_period;
		U = 8'b00001000; //N1 -> N1
		#clk_period;
		U = 8'b00000000; //N1 -> N0
		#clk_period;
		U = 8'b10000000; //N0 -> N4
		#clk_period;
	end
      
endmodule