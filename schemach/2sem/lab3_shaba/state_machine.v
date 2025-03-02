
module state_machine(
	input clk,
	input rst,
	input [7:0] U,
   output reg [7:0] C
);

localparam [2:0] s0 = 3'b000;
localparam [2:0] s1 = 3'b001;
localparam [2:0] s2 = 3'b010;
localparam [2:0] s3 = 3'b011;
localparam [2:0] s4 = 3'b100;
localparam [2:0] s5 = 3'b101;

reg [2:0] state;

always @(posedge clk) begin
	if (rst) begin
		state = s0;
	end else begin
		case (state)
			s0: begin
				if (~U[4] & U[2] & U[1]) state = s2; else if (U[7] | ~U[1] | ~U[6] | ~U[4] | U[0]) state = s4; else state = s0; 
				if (~U[4] & U[2] & U[1]) C = 8'b01000000; else if (U[7] | ~U[1] | ~U[6] | ~U[4] | U[0]) C = 8'b01111111; else C = 8'b00000000;
			end
			
			s1: begin
				if(~U[3] | U[2] | U[6]) state = s0; else if((~U[7] & U[2]) | (U[4] & ~U[1] & ~U[5] & ~U[6]) | U[3]) state = s1;
				if(~U[3] | U[2] | U[6]) C = 8'b10011001; else if((~U[7] & U[2]) | (U[4] & ~U[1] & ~U[5] & ~U[6]) | U[3]) C = 8'b10101010;
			end
			
			s2: begin
				if(U[7] | ~U[2]) state = s0; else if(U[3] & U[2]) state = s5; else state = s2;
				if(U[7] | ~U[2]) C = 8'b11111101; else if(U[3] & U[2]) C = 8'b10000001; else C = 8'b00000000;
			end
			
			s3: begin
				if(~U[6] | (U[3] & U[4] & U[5]) | (~U[0] & ~U[2])) state = s5; else if((~U[3] & ~U[0]) | (U[5] & U[6]) | U[1] | ~U[2]) state = s1;else state = s3;
				if(~U[6] | (U[3] & U[4] & U[5]) | (~U[0] & ~U[2])) C = 8'b00100111; else if((~U[3] & ~U[0]) | (U[5] & U[6]) | U[1] | ~U[2]) C = 8'b10000110; else C = 8'b00000000;
			end
			
			s4: begin
				if(~U[3] | U[2] | ~U[6] | ~U[0] | ~U[1] | U[4] | ~U[5]) state = s3; else state = s4;
				if(~U[3] | U[2] | ~U[6] | ~U[0] | ~U[1] | U[4] | ~U[5]) C = 8'b00011010; else C = 8'b00000000;
			end
			
			s5: begin 
				if((~U[4] & ~U[2]) | ~U[6] | (~U[3] & ~U[1] & U[0])) state = s2; else if(U[7] & U[6] & U[5]) state = s4; else state = s5;
				if((~U[4] & ~U[2]) | ~U[6] | (~U[3] & ~U[1] & U[0])) C = 8'b01000001; else if(U[7] & U[6] & U[5]) C = 8'b01110110; else C = 8'b00000000;
			end
		endcase
	end
end
endmodule