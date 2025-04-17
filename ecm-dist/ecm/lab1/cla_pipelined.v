//Файл cla_pipelined.v
module pipelined_adder #(
  parameter w = 128, // Ширина данных
  parameter s = 4    // Количество ступеней конвейера
) (
  input clk,                // Тактовый сигнал
  input rstn,               // Сброс (активен низкий)
  input [w-1:0] op1,        // Операнд 1
  input [w-1:0] op2,        // Операнд 2
  input cin,                // Входной перенос
  input valid_op1,          // Сигнал готовности операнда 1
  input valid_op2,          // Сигнал готовности операнда 2
  output reg [w-1:0] res,   // Результат сложения
  output reg valid           // Сигнал готовности результата
);

  // Ширина каждой ступени конвейера
  localparam [s*32-1:0] stage_widths = {32'd34, 32'd32, 32'd32, 32'd30};

  // Макрос для доступа к ширине ступени
  `define wth(stage) stage_widths[32*stage+:32]

  // Функция для вычисления базового адреса для данной ступени
  function integer base;
    input integer stage;
    begin
      base = 0;
      for (stage = stage; stage > 0; stage = stage - 1) begin
        base = base + stage_widths[32*(stage-1)+:32];
      end
    end
  endfunction

  // Функция для получения ширины ступени
  function integer width;
    input integer stage;
    begin
      width = stage_widths[32*stage+:32];
    end
  endfunction

  // Регистры для хранения данных на каждой ступени конвейера
  reg [w-1:0] stage_reg [0:s-1];
  // Комбинационные сигналы для каждой ступени
  wire [w-1:0] stage_comb [0:s-1];
  // Регистры для хранения операндов на каждой ступени
  reg [w-1:0] stage_op1 [0:s-1];
  reg [w-1:0] stage_op2 [0:s-1];
  // Регистры для сигналов готовности на каждой ступени
  reg [s-1:0] valid_reg;
  // Регистры для переноса на каждой ступени
  reg [s:0] c_reg;
  // Комбинационные сигналы для переноса
  wire [s:0] c_comb;
  // Сигналы переноса из каждой ступени
  wire [s-1:0] f;
  integer i;
  genvar k;

  // Инициализация регистров
  initial begin
    for (i = 0; i < s; i = i + 1) begin
      stage_reg[i] <= {w{1'b0}};
      valid_reg[i] <= 1'b0;
      stage_op1[i] <= {w{1'b0}};
      stage_op2[i] <= {w{1'b0}};
      res <= {w{1'b0}};
    end
  end

  // Загрузка операндов в первую ступень конвейера
  always @(*) begin
    stage_op1[0] <= op1; //Операнд 1
    stage_op2[0] <= op2; //Операнд 2
    c_reg[0] <= cin; //Входной перенос
  end

  // Генерация ступеней конвейера
  generate
    for (k = 0; k < s; k = k + 1) begin : adder
      // Сложение на k-ой ступени
      assign {c_comb[k+1], stage_comb[k][base(k)+:`wth(k)], f[k]} = {1'b0, stage_op1[k][base(k)+:`wth(k)], c_reg[k]} + {1'b0, stage_op2[k][base(k)+:`wth(k)], c_reg[k]};

      // Тактируемый процесс для k-ой ступени
      always @(posedge clk) begin: stage_reg_inst
        if (~rstn) begin // Сброс
          for (i = 1; i < s; i = i + 1) begin
            stage_reg[i][base(k)+:`wth(k)] <= {(`wth(k)){1'b0}};
          end
        end else begin
          // Запись результата в регистр текущей ступени
          stage_reg[0][base(k)+:`wth(k)] <= stage_comb[0][base(k)+:`wth(k)];
          // Передача данных между ступенями
          for (i = 1; i < s; i = i + 1) begin
            if (valid_reg[i-1]) begin
              if (i == k)
                stage_reg[i][base(k)+:`wth(k)] <= stage_comb[i][base(k)+:`wth(k)];
              else
                stage_reg[i][base(k)+:`wth(k)] <= stage_reg[i-1][base(k)+:`wth(k)];
            end
          end
        end
      end
    end
  endgenerate

  // Тактируемый процесс для управления конвейером и выдачи результата
  always @(posedge clk) begin
    if (~rstn) begin // Сброс
      valid <= 1'b0;
      res <= {w{1'b0}};
      valid_reg <= {s{1'b0}};
      for (i = 1; i < s; i = i + 1) begin
        stage_op1[i] <= {w{1'b0}};
        stage_op2[i] <= {w{1'b0}};
        c_reg[i] <= 1'b0;
      end
    end else begin
      valid_reg[0] <= valid_op1 & valid_op2; // Сигнал готовности для первой ступени
      // Распространение сигнала готовности и переноса по ступеням конвейера
      for (i = 1; i < s; i = i + 1) begin
        valid_reg[i] <= valid_reg[i-1];
        c_reg[i] <= c_comb[i];
        stage_op1[i] <= stage_op1[i-1];
        stage_op2[i] <= stage_op2[i-1];
      end
      res <= stage_reg[s-1]; // Выдача результата из последней ступени
      valid <= valid_reg[s-1]; // Сигнал готовности результата
    end
  end

endmodule
