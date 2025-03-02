module rk2_var2(
	input clk,
	input rst,
	input cs,
	input [7:0] d_in,
	output reg ack,
	output reg err,
	output reg [15:0] d_out
);

localparam HEAD = 8'b11001010;
localparam WAIT = 3'b000, REC_BYTE = 3'b001, REC_BYTE2 = 3'b100, REC_HEAD = 3'b010, REC_ERR = 3'b011, REC_ERR2 = 3'b101;

reg [2:0] state;
reg [7:0] mem;

always @(posedge clk, posedge rst)
	if (rst || (cs && state == WAIT)) begin
		state <= WAIT; ack <= 1; err <= 0;
	end else begin
		if (state == WAIT) begin
			if (d_in == HEAD)
				state <= REC_HEAD;
			else begin
				state <= REC_ERR;
			end
		end else if (state == REC_HEAD) begin
			state <= REC_BYTE; mem <= d_in;
		end else if (state == REC_BYTE) begin
			state <= REC_BYTE2; d_out <= {mem, d_in};
		end else if (state == REC_BYTE2) begin
			state <= WAIT; ack <= 0;
		end else if (state == REC_ERR) begin
			state <= REC_ERR2; err <= 1;
		end else if (state == REC_ERR2) begin
			state <= WAIT; err <= 0;
		end
	end

endmodule
