`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:28 11/29/2024 
// Design Name: 
// Module Name:    led_decode 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module led_decode (
input [2:0] dh,
output reg [7:0] seg_data
);
always @(dh) 
	case (dh)
		3'b000: seg_data = 8'b10000001;
		3'b001: seg_data = 8'b11001111;
		3'b010: seg_data = 8'b10010010;
		3'b011: seg_data = 8'b10000110;
		3'b100: seg_data = 8'b11001100;
		3'b101: seg_data = 8'b10100100;
		3'b110: seg_data = 8'b10100000;
		3'b111: seg_data = 8'b10001111;
		
		default: seg_data = 8'bxxxxxxxx;
	endcase
endmodule
