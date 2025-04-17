module adder #(
  //CLA сумматор синтезируется для w>=6
  parameter w = 6
)
(
  input [w-1:0]	a,
  input [w-1:0]	b,
  output [w:0]  sum
);
  assign sum = a + b;
endmodule
