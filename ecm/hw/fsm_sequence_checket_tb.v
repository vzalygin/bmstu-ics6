module testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] ascii_char;
	reg char_valid;

	// Outputs
	wire sequence_valid;
	wire output_strobe;

	// Instantiate the Unit Under Test (UUT)
	fsm_sequence_checker uut (
		.clk(clk), 
		.rst(rst), 
		.ascii_char(ascii_char), 
		.char_valid(char_valid), 
		.sequence_valid(sequence_valid), 
		.output_strobe(output_strobe)
	);
	
	initial begin
		clk = 0;
		forever #3.2 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		ascii_char = 0;
		char_valid = 0;
		
		#10 rst = 0; 
		
		// 1. Send h11 (ничего не делаем) (с импульсом valid)
		@(posedge clk);
		ascii_char = 8'h11;
		@(posedge clk);
		@(posedge clk);
		char_valid = 1;
		@(posedge clk);
		char_valid = 0;

		// 2. Send h0A (start_stop) (с импульсом valid)
		@(posedge clk);
		ascii_char = 8'h0A;
		@(posedge clk);
		@(posedge clk);
		
		char_valid = 1;
		@(posedge clk);
		char_valid = 0;
		
		// 3. Send h41 (hex_digit) (с импульсом valid)
		@(posedge clk);
		ascii_char = 8'h41;
		@(posedge clk);
		@(posedge clk);
		
		char_valid = 1;
		@(posedge clk);
		char_valid = 0;
		
		// 4. Попеременная передача 00101011 и 01000110 (4 раза, итого 8 символов)
		repeat(4) begin
			// Первый символ пары: 00101011 (0x2B)
			@(posedge clk);
			ascii_char = 8'b00101011; // 0x2B
						@(posedge clk);
						
			char_valid = 1;
			@(posedge clk);
			char_valid = 0;

			// Второй символ пары: 01000110 (0x46)
			@(posedge clk);
			ascii_char = 8'b01000110; // 0x46
						@(posedge clk);

			char_valid = 1;
			@(posedge clk);
			char_valid = 0;
		end
		
		// 5. Send h0A (start_stop) (с импульсом valid)
		@(posedge clk);
		ascii_char = 8'h0A;
					@(posedge clk);
					
		char_valid = 1;
		@(posedge clk);
		char_valid = 0;
		
		// Wait 100 ns for global reset to finish
		#100; $finish;
        
		// Add stimulus here

	end
      
endmodule

