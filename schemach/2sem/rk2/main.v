module main (
	input clk,
	input count, 
	input [7:0] U,
	input rst,  
	output [3:0] a, 
	output [7:0] led,
	output [7:0] C_to_print,
	output [1:0] state,
	output [2:0] state_to_print
);
	//cnt -   
    wire cnt;
    lab2_example lab2_example_inst (
        .clk(clk),
        .rst(rst),
        .count(count), 
        .cnt(cnt),
        .s_out(state)
    );
	 
	 //reg [7:0] C;
	 //wire [2:0] state_to_print = 3'b000;
	 automata automata1(
	 .clk(clk),
	 .rst(rst),
	 .en(en),
	 .U(U),
	 .C(C_to_print),
	 .state(state_to_print)
	 );

	//   
	reg [16:0] counter;
	wire counter_ovf = (counter == 2**16);
	always @(posedge clk) 
		if(rst || counter_ovf) 
			counter <= 0;
		else
			counter <= counter + 1;

	 // CNT -  CNT ( )
    reg cnt_ff;
    wire cnt_rise = (cnt==1'b1) && (cnt_ff==1'b0);
    always @(posedge clk) 
        if(rst)
            cnt_ff <= 1'b0;
        else begin
            cnt_ff <= cnt;
				
			end

    // 
	 assign en = cnt_rise;
    reg [15:0] main_counter;
    always @(posedge clk) 
        if(rst)
            main_counter <= 1'b0;
        else 
            if(cnt_rise) begin
                //main_counter <= main_counter + 1;
					 main_counter <= {13'b0000000000000,state_to_print};
					 
				end
					 

    /*       */
    wire [3:0] driver_to_decoder;
	 seven_segment_driver ssd_inst (
        .clk(clk),
        .rst(rst),
        .q(state_to_print),
        .clk_div(counter_ovf),
        .d(driver_to_decoder),
        .a(a)
    );
   
    led_decode led_decode_inst (
        .dh(driver_to_decoder),
        .seg_data(led)
    );

endmodule 