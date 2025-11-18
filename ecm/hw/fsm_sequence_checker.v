// HW ECM
module fsm_sequence_checker(
	input clk,
	input rst,
	input wire [7:0] ascii_char,
	input wire char_valid,
	output reg sequence_valid,
	output reg output_strobe
    );
	 
	// Состояния автомата
	localparam IDLE = 3'd0;
	localparam FIRST_HEX = 3'd1;
	localparam MATH_SYMBOL = 3'd2;
	localparam HEX = 3'd3;
	localparam ERROR = 3'd4;
	localparam ACCEPT = 3'd5;
	
	// Регистр состояния автомата
	reg [2:0] state, next_state;
	reg [2:0] seq_count;
	
	// Ascii symbols
	wire start_stop;
	wire hex_digit;
	wire math_symbol;
	
	// Локальные параметры бодрейта
	localparam integer FULL_RX = 4; // 153600000/230400
	localparam integer MID_RX = FULL_RX/2;
	localparam integer FULL_TX = 8; // 153600000/460800
	localparam integer MID_TX = FULL_TX/2;

	reg [11:0] clk_div_rx;
	reg midf_rx, fullf_rx;
	reg div_rst_rx;

	reg [11:0] clk_div_tx;
	reg midf_tx, fullf_tx;
	reg div_rst_tx;

	reg bc_rst;
	reg [2:0] bc;
	wire clr_conters;

	
	// Инстанс чекера ascii
	ascii_type_detector ascii_type_inst (
		.ascii_char        (ascii_char),        
		.small_letter      (),
		.capital_letter    (),   
		.number            (),           
		.hex_digit         (hex_digit), 
		.punctuation_basic (), 
		.punctuation_finance (),
		.parentheses       (),    
		.curly_braces      (),    
		.math_symbol       (math_symbol), 
		.whitespace        (), 
		.vowel             (),
		.start_stop        (start_stop), 
		.other             () 
	);
	
	// Обработка rst
	always @(posedge clk) begin  
		if (rst)    
			state <= IDLE;
		else   
			state <= next_state;
	end
	
	// Реализация автомата
	always @(*) begin
		if (char_valid && midf_rx) begin 
			case (state)
				IDLE: begin      
					if (midf_rx && start_stop)       
						next_state = FIRST_HEX;
						else
							next_state = IDLE;
				end
				
				FIRST_HEX: begin
					if (midf_rx && hex_digit)
						next_state = MATH_SYMBOL;       
					else 
						next_state = ERROR;     
				end   
				
				MATH_SYMBOL: begin     
					if (midf_rx && math_symbol)
						next_state = HEX; 
					else 
						next_state = ERROR; 
				end
				
				HEX: begin     
					if (midf_rx && hex_digit)
						next_state = MATH_SYMBOL; 
					else if (start_stop && seq_count == 4)
						next_state = ACCEPT; 
					else
						next_state =ERROR;
				end

				ACCEPT: begin
					next_state = IDLE;
				end

				ERROR: begin
					next_state = IDLE;
				end
				
				default: next_state = IDLE;
			endcase
		end
	end
	
	// Счетчик тактов (делитель частоты)
	always @(posedge clk) begin
		if (rst || div_rst_rx) begin
			clk_div_rx <= 0;
			midf_rx <= 0;
			fullf_rx <= 0;
		end 
		else begin
			clk_div_rx <= clk_div_rx + 1;
		
		if (clk_div_rx == MID_RX) begin midf_rx <= 1; clk_div_rx <= 0; end
		else 	midf_rx <= 0;
		
		if (clk_div_rx == FULL_RX) fullf_rx <= 1;
		else fullf_rx <= 0;
		end
	end
	
	// Делитель частоты, другой
	always @(posedge clk) begin
		if (rst || div_rst_tx) begin
			clk_div_tx <= 0;
			midf_tx <= 0;
			fullf_tx <= 0;
		end 
		else begin
			clk_div_tx <= clk_div_tx + 1;

		if (clk_div_tx == MID_TX) midf_tx <= 1;
		else midf_tx <= 0;

		if (clk_div_tx == FULL_TX) fullf_tx <= 1;
		else fullf_tx <= 0;
		end
	end
	
	// Очистка счетчиков
	assign clr_counters = (state == IDLE) || (state == ERROR) || (state == ACCEPT);
	
	// Счетчики количества ascii символов
	always @(posedge clk) begin
		if (rst || clr_counters) begin
			seq_count  <= 0;
		end else if (midf_rx && char_valid) begin
			case (state)     
				HEX: if (hex_digit)
					seq_count <= seq_count + 1;      
				default: begin        
					seq_count  <= seq_count;
				end
			endcase
		end
	end
	
	
	// Выходные сигналы
	always @(posedge clk) begin
		if (rst) begin
			sequence_valid <= 0;
			output_strobe  <= 0;
		end else if (state == ACCEPT && fullf_tx) begin    
			sequence_valid <= 1;
			output_strobe  <= 1;
		end else if (state == ERROR && fullf_tx) begin
			sequence_valid <= 0;
			output_strobe  <= 1;
		end else begin
			sequence_valid <= 0;
			output_strobe  <= 0;
		end
	end
	
endmodule
