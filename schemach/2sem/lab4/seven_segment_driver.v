module seven_segment_driver (
	input clk, 
	input clk_div,
	input [15:0] q,
	input rst,
	output [3:0] d,
	output reg [3:0] a
);

	always @(posedge clk) 
		if (rst)
			a<=4'b1110;
		else
			if (clk_div) 
				a <= {a[2:0], a[3]};

assign d[0] = q[0] & ~a[0] | q[4] & ~a[1] | q[8] & ~a[2]  | q[12] & ~a[3]; 
assign d[1] = q[1] & ~a[0] | q[5] & ~a[1] | q[9] & ~a[2]  | q[13] & ~a[3]; 
assign d[2] = q[2] & ~a[0] | q[6] & ~a[1] | q[10] & ~a[2] | q[14] & ~a[3]; 
assign d[3] = q[3] & ~a[0] | q[7] & ~a[1] | q[11] & ~a[2] | q[15] & ~a[3]; 

endmodule
