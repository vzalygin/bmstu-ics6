module led_decode (
input [3:0] dh,
output reg [7:0] seg_data
);
always @(dh) 
	case (dh)
		4'b0000: seg_data = 8'b10000001;
		4'b0001: seg_data = 8'b11001111;
		4'b0010: seg_data = 8'b10010010;
		4'b0011: seg_data = 8'b10000110;
		4'b0100: seg_data = 8'b11001100;
		4'b0101: seg_data = 8'b10100100;
		4'b0110: seg_data = 8'b10100000;
		4'b0111: seg_data = 8'b10001111;
		4'b1000: seg_data = 8'b10000000;
		4'b1001: seg_data = 8'b10000100;
		4'b1010: seg_data = 8'b10001000;
		4'b1011: seg_data = 8'b11100000;
		4'b1100: seg_data = 8'b10110001;
		4'b1101: seg_data = 8'b11000010;
		4'b1110: seg_data = 8'b10110000;
		4'b1111: seg_data = 8'b10111000;
		default: seg_data = 8'bx;
	endcase
endmodule

