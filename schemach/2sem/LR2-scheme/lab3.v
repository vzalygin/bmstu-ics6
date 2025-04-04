
module lab3(
	input clk,
	input rst,
	input [7:0] U,
	input en,
   output reg [7:0] C,
	output reg [2:0] state
);

localparam [2:0] N0 = 3'b000;
localparam [2:0] N1 = 3'b001;
localparam [2:0] N2 = 3'b010;
localparam [2:0] N3 = 3'b011;
localparam [2:0] N4 = 3'b100;
localparam [2:0] N5 = 3'b101;

always @(posedge clk) begin
	if (rst) begin
		state <= N0;
	end else if (en) begin
		case (state)
			N0:
			if (~U[0] & ~U[1]) begin
				state <= N2;
			end else begin
			end
			N1:
			if (~U[4]) begin
				state <= N3;
			end else begin
			end
			N2:
			if (U[3] | (~U[6])) begin
				state <= N2;
			end else if (~U[7]) begin
				state <= N1;
			end else if ((~U[3] & ~U[1]) | (~U[6] & ~U[2]) | (U[7] & U[0] & ~U[5])) begin
				state <= N3;
			end
			N3:
			if (~U[4]) begin
				state <= N2;
			end else if (~U[7] & U[2]) begin
				state <= N4;
			end else if (U[0] | ~U[1] | ~U[7] | ~U[5]) begin
				state <= N3;
			end
			N4:
			if (~U[0] & ~U[7] & U[4] & U[3]) begin
				state <= N1;
			end else if (U[4] | (~U[2] & U[7])) begin
				state <= N5;
			end else if (U[2] | (~U[1] & U[7]) | (U[0] & ~U[4] & ~U[5]) | U[3]) begin
				state <= N3;
			end else if ((~U[3] & U[7]) | ~U[5] | ~U[2]) begin
				state <= N0;
			end else begin
			end
			N5:
			if (U[3]) begin
				state <= N0;
			end else begin
			end
		endcase
	end
end

always @(posedge clk) begin
	if (rst) begin
		C <= 8'b00000000;
	end else begin
		case (state)
			N0:
			if (~U[0] & ~U[1]) begin
				C <= 8'b10000011;
			end else begin
				C <= 8'b00000000;
			end
			N1:
			if (~U[4]) begin
				C <= 8'b00101000;
			end else begin
				C <= 8'b00000000;
			end
			N2:
			if (U[3] | (~U[6])) begin
				C <= 8'b10000100;
			end else if (~U[7]) begin
				C <= 8'b11110101;
			end else if ((~U[3] & ~U[1]) | (~U[6] & ~U[2]) | (U[7] & U[0] & ~U[5])) begin
				C <= 8'b10001011;
			end
			N3:
			if (~U[4]) begin
				C <= 8'b00110110;
			end else if (~U[7] & U[2]) begin
				C <= 8'b00011100;
			end else if (U[0] | ~U[1] | ~U[7] | ~U[5]) begin
				C <= 8'b01000000;
			end
			N4:
			if (~U[0] & ~U[7] & U[4] & U[3]) begin
				C <= 8'b11001111;
			end else if (U[4] | (~U[2] & U[7])) begin
				C <= 8'b01000110;
			end else if (U[2] | (~U[1] & U[7]) | (U[0] & ~U[4] & ~U[5]) | U[3]) begin
				C <= 8'b10101110;
			end else if ((~U[3] & U[7]) | ~U[5] | ~U[2]) begin
				C <= 8'b11100111;
			end else begin
				C <= 8'b00000000;
			end
			N5:
			if (U[3]) begin
				C <= 8'b10010101;
			end else begin
				C <= 8'b00000000;
			end
		endcase
	end
end

endmodule