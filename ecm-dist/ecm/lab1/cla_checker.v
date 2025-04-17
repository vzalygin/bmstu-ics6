module cla_checker #(
  parameter w = 195
)
(
  input 	rstn,
  input 	clk,
  input 	en,
  output reg error
);
  (* KEEP="TRUE" *)(* DONT_TOUCH="TRUE" *) wire [w-1:0] counter;
  (* KEEP="TRUE" *)(* DONT_TOUCH="TRUE" *) reg [w-1:0] a,b,sum;
  wire error_comb;
  reg f;
  reg carry_in;
   //LFSR     
   lfsr lsfr_128(.clk(clk),.rstn(rstn),.en(en),.q(counter));
  //    T 
  always @(posedge clk)
	 if (!rstn)
	   carry_in <= 1'b0;
	 else
	   carry_in <= ~carry_in;
  //  carry_in==1,  a  b   lsfr 
  //  a=b=0
  always @(posedge clk) begin
		if (!rstn) begin
		  a <= {w{1'b0}};
		  b <= {w{1'b0}};
		end
		else if (!carry_in) begin
		  a <= counter;
		  b <= ~counter;
		end else begin
		  a <= {w{1'b0}};
		  b <= {w{1'b0}};
		end
  end
  //     
  always @(posedge clk) begin
		if (!rstn)
		  {sum,f} <= {(w+1){1'b0}};
		else
		  {sum,f} <= {a,carry_in} + {b,carry_in};
  end
  //          
  assign error_comb = (sum != {w{1'b0}});
  //    ,    : 
  always @(posedge clk) begin
		if (!rstn) begin
		  error <= 1'b0;
		end
		else if (error_comb) begin
		  error <= 1'b1;
		end
  end
  wire[35:0] control0;
  icon icon_inst (
	  .CONTROL0(control0) 	// INOUT BUS [35:0]
  );

  ila ila_inst (
	   .CONTROL(control0),  // INOUT BUS [35:0]
	   .CLK(clk), 			    // IN
	   .TRIG0(a), 	        // IN BUS [127:0]
	   .TRIG1(b), 	        // IN BUS [127:0]
	   .TRIG2(sum), 		    // IN BUS [127:0]
	   .TRIG3(error_comb),	// IN BUS [0:0]
	   .TRIG4(error) 		    // IN BUS [0:0]
  );

endmodule
