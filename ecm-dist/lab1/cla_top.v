`timescale 1ns / 1ps

module cla_top (
  input  rst,
  input  user_clk, //66MHz MHz
  input  en,
  output error,
  output locked
);

wire int_clk, clk_bufg, clkfbout, clkfbout_bufg;
reg[15:0] logic_resetn;

   
   MMCM_BASE #(
      .BANDWIDTH("OPTIMIZED"),   // Jitter programming ("HIGH","LOW","OPTIMIZED")
      .CLKFBOUT_MULT_F(13),     // Multiply value for all CLKOUT (5.0-64.0).
      .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (0.00-360.00).
      .CLKIN1_PERIOD(15.15),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      .CLKOUT0_DIVIDE_F(1.0),    // Divide amount for CLKOUT0 (1.000-128.000).
      // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT5_DUTY_CYCLE(0.5),
      .CLKOUT6_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      .CLKOUT1_PHASE(0.0),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT5_PHASE(0.0),
      .CLKOUT6_PHASE(0.0),
      // CLKOUT1_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
      .CLKOUT1_DIVIDE(4),
      .CLKOUT2_DIVIDE(1),
      .CLKOUT3_DIVIDE(1),
      .CLKOUT4_DIVIDE(1),
      .CLKOUT5_DIVIDE(1),
      .CLKOUT6_DIVIDE(1),
      .CLKOUT4_CASCADE("FALSE"), // Cascase CLKOUT4 counter with CLKOUT6 (TRUE/FALSE)
      .CLOCK_HOLD("FALSE"),      // Hold VCO Frequency (TRUE/FALSE)
      .DIVCLK_DIVIDE(1),         // Master division value (1-80)
      .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
      .STARTUP_WAIT("FALSE")     // Not supported. Must be set to FALSE.
   ) MMCM_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(),     // 1-bit output: CLKOUT0 output
      .CLKOUT0B(),   // 1-bit output: Inverted CLKOUT0 output
      .CLKOUT1(int_clk),     // 1-bit output: CLKOUT1 output
      .CLKOUT1B(),   // 1-bit output: Inverted CLKOUT1 output
      .CLKOUT2(),     // 1-bit output: CLKOUT2 output
      .CLKOUT2B(),   // 1-bit output: Inverted CLKOUT2 output
      .CLKOUT3(),     // 1-bit output: CLKOUT3 output
      .CLKOUT3B(),   // 1-bit output: Inverted CLKOUT3 output
      .CLKOUT4(),     // 1-bit output: CLKOUT4 output
      .CLKOUT5(),     // 1-bit output: CLKOUT5 output
      .CLKOUT6(),     // 1-bit output: CLKOUT6 output
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(clkfbout),   // 1-bit output: Feedback clock output
      .CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT output
      // Status Port: 1-bit (each) output: MMCM status ports
      .LOCKED(locked),       // 1-bit output: LOCK output
      // Clock Input: 1-bit (each) input: Clock input
      .CLKIN1(user_clk),
      // Control Ports: 1-bit (each) input: MMCM control ports
      .PWRDWN(1'b0),       // 1-bit input: Power-down input
      .RST(rst),             // 1-bit input: Reset input
      // Feedback Clocks: 1-bit (each) input: Clock feedback ports
      .CLKFBIN(clkfbout_bufg)      // 1-bit input: Feedback clock input
   );

   // End of MMCM_BASE_inst instantiation

	//FB signal
    BUFG bufgctrl_fb (
      .I(clkfbout),
      .O(clkfbout_bufg)
  );

   //Target clock
    BUFG bufgctrl_clk (
      .I(int_clk),
      .O(clk_bufg)
  ); 

	//Logic reset
	always @(posedge clk_bufg or negedge locked) begin
		 if (!locked) begin
			  logic_resetn <= 0;
		 end else begin
			  logic_resetn <= {1'b1, logic_resetn [15:1]};
		 end
	end

	// lab_top module
	cla_checker_pipelined #(
        .w(195)
    ) cla_inst (
		.rstn(logic_resetn[0]),
		.clk(clk_bufg),
		.en(en),
		.error(error)
    );

endmodule
