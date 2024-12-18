`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:18 11/29/2024 
// Design Name: 
// Module Name:    main 
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
module main (
	input clk,
	input count, 
	input rst,  
	input [7:0] u,
	output [7:0] c, 
	output [7:0] led
	//output [1:0] state
);
	 wire [2:0] state;
    wire cnt;
    lab1_ex lab2_example_inst (
        .clk(clk),
        .rst(rst),
        .count(count), 
        .cnt(cnt)
        //.s_out(state)
    );
	
	 
	 
	 reg reg_out;
	 always @(posedge clk)
		reg_out<=cnt;
		
	 wire cnt_rise = !reg_out && cnt;

	 automata automata (
        .clk(clk),
        .rst(rst),
        .C(c), 
        .U(u),
        .EN(cnt_rise),
		  .state(state)
    );
   
    led_decode led_decode_inst (
        .dh(state),
        .seg_data(led)
    );

endmodule 

