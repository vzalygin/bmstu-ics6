module lfsr (
  input clk,
  input rstn,
  input en,
  output reg [181:0] q
);

  reg [181:0] next_q;

  always @(posedge clk) begin
    if (!rstn) begin
      q <= {181{1'b1}}; // Инициализация
    end else if (!en) begin
      next_q = q << 1;
      next_q[0] = q[180] ^ q[179] ^ q[174] ^ q[173]; // Обратная связь согласно неприводимому полиному степени 182
      q <= next_q;
    end
  end

endmodule
