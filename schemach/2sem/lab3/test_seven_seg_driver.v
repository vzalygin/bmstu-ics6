module test_seven_seg_driver;
	// Inputs
	reg clk;
	reg clk_div;
	reg [15:0] q;
	reg rst;
	// Outputs
	wire [3:0] d;
	wire [3:0] a;
	// Instantiate the Unit Under Test (UUT)
	seven_segment_driver uut (
		.clk(clk), 
		.clk_div(clk_div), 
		.q(q), 
		.rst(rst), 
		.d(d), 
		.a(a)
	);
  parameter clk_period = 20; 
  initial begin
    clk = 0;
    forever #(clk_period/2) clk = ~clk;
  end
  // clk_div generation (более реалистичный пример)
  initial begin
    clk_div = 0;
    forever #(clk_period*2) clk_div = ~clk_div; // Меняется каждые 2 такта clk
  end
  initial begin
    rst = 1;
    #(clk_period*2);
    rst = 0;
  end
  initial begin
  #(clk_period*2);
    q = 16'h0000;
    repeat (16) begin
        q = q + 1;
        #(clk_period*4); // wait
    end
  end
endmodule