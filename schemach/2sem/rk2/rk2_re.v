module rk2_re(
	input clk,
	input rst,
	input cs,
	input d,
	output reg ack,
	output reg err
);

localparam WAIT = 2'b00, REC = 2'b01, OUT = 2'b10;
localparam COR = 4'b0101;
reg [1:0] st;
reg [1:0] c;
reg [3:0] mem;

always @(posedge clk)
	if (rst) begin
		ack <= 1;
		err <= 1;
		st <= WAIT;
		c <= 0;
	end else begin
		if (~cs && st == WAIT) begin
			st <= REC; c <= 0;
			mem[0] <= d;
		end else if (st == REC) begin
			if (c == 0) begin
				c <= 1;
				mem[1] <= d;
			end else if (c == 1) begin
				c <= 2;
				mem[2] <= d;
			end else if (c == 2) begin
				c <= 3;
				mem[3] <= d;
			end else begin
				c <= 0; st <= OUT;
				if (mem == COR)
					ack <= 0;
				else
					err <= 0;
			end
		end else if (st == OUT) begin
			if (c == 0) begin
				c <= 1;
			end else begin
				st <= WAIT;
				ack <= 1; err <= 1;
			end
		end
	end

endmodule
