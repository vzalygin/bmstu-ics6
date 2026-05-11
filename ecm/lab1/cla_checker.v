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
   //LFSR счетчик и его обратный код
   lfsr lsfr_128(.clk(clk),.rstn(rstn),.en(en),.q(counter));
  // Входной перенос формируется T триггером
  always @(posedge clk)
	 if (!rstn)
	   carry_in <= 1'b0;
	 else
	   carry_in <= ~carry_in;
  // Если carry_in==1, то a и b подаются из lsfr счетчика
  // иначе a=b=0
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
  // Выход сумматора записывается в регистр
  always @(posedge clk) begin
		if (!rstn)
		  {sum,f} <= {(w+1){1'b0}};
		else
		  {sum,f} <= {a,carry_in} + {b,carry_in};
  end
  // Сравнение результата суммирования с эталонным значением происходит в следующем такте
  assign error_comb = (sum != {w{1'b0}});
  // Если наблюдается сигнал ошибки, то установить состояние светодиода: ВКЛ
  always @(posedge clk) begin
		if (!rstn) begin
		  error <= 1'b0;
		end
		else if (error_comb) begin
		  error <= 1'b1;
		end
  end

endmodule
