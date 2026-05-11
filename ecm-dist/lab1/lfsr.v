module lfsr (
  input clk,
  input rstn,
  input en,
  output reg [194:0] q
);

  reg [194:0] next_q;

  always @(posedge clk) begin
    if (!rstn) begin
      q <= {194{1'b1}}; // Инициализация
    end else if (!en) begin
      next_q = q << 1;
      next_q[0] = q[194] ^ q[192] ^ q[191] ^ q[186]; // Обратная связь согласно неприводимому полиному степени 195
      q <= next_q;
    end
  end

endmodule
