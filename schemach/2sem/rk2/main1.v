
`timescale 10ns/1ns
module main_test();
	reg clk = 0, rst = 1, cs = 1;
	wire ack, err;
	reg [7:0] d_in;
	wire [15:0] d_out;
	
	rk2_var2 impl(
		.clk(clk),
		.rst(rst),
		.cs(cs),
		.d_in(d_in),
		.ack(ack),
		.err(err),
		.d_out(d_out)
	);
	
   always #50 clk = ~clk;
	
   initial begin
		#200 
		rst = 1'b0;
		#260
		
		cs = 0;
		d_in = 8'b11001010;
		#100
		d_in = 8'b11111111;
		#100
		d_in = 8'b00000001;
		#100
		cs = 1;
		
		#200
		
		cs = 0;
		d_in = 8'b11001100;
		#100
		d_in = 'bz;
		#100
		d_in = 'bz;
		#100
		cs = 1;
		
		
		#1000;
		$finish;
   end
endmodule
