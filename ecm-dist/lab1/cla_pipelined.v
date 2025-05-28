// cla_pipelined.v
module pipelined_adder #(
  parameter w = 195, //  
  parameter s = 2    //   
) (
  input clk,                //  
  input rstn,               //  ( )
  input [w-1:0] op1,        //  1
  input [w-1:0] op2,        //  2
  input cin,                //  
  input valid_op1,          //    1
  input valid_op2,          //    2
  output reg [w-1:0] res,   //  
  output reg valid           //   
);

  //    
  localparam [s*32-1:0] stage_widths = {32'd98, 32'd97};

  //      
  `define wth(stage) stage_widths[32*stage+:32]

  //        
  function integer base;
    input integer stage;
    begin
      base = 0;
      for (stage = stage; stage > 0; stage = stage - 1) begin
        base = base + stage_widths[32*(stage-1)+:32];
      end
    end
  endfunction

  //     
  function integer width;
    input integer stage;
    begin
      width = stage_widths[32*stage+:32];
    end
  endfunction

  //        
  reg [w-1:0] stage_reg [0:s-1];
  //     
  wire [w-1:0] stage_comb [0:s-1];
  //       
  reg [w-1:0] stage_op1 [0:s-1];
  reg [w-1:0] stage_op2 [0:s-1];
  //       
  reg [s-1:0] valid_reg;
  //      
  reg [s:0] c_reg;
  //    
  wire [s:0] c_comb;
  //     
  wire [s-1:0] f;
  integer i;
  genvar k;

  //  
  initial begin
    for (i = 0; i < s; i = i + 1) begin
      stage_reg[i] <= {w{1'b0}};
      valid_reg[i] <= 1'b0;
      stage_op1[i] <= {w{1'b0}};
      stage_op2[i] <= {w{1'b0}};
      res <= {w{1'b0}};
    end
  end

  //      
  always @(*) begin
    stage_op1[0] <= op1; // 1
    stage_op2[0] <= op2; // 2
    c_reg[0] <= cin; // 
  end

  //   
  generate
    for (k = 0; k < s; k = k + 1) begin : adder
      //   k- 
      assign {c_comb[k+1], stage_comb[k][base(k)+:`wth(k)], f[k]} = {1'b0, stage_op1[k][base(k)+:`wth(k)], c_reg[k]} + {1'b0, stage_op2[k][base(k)+:`wth(k)], c_reg[k]};

      //    k- 
      always @(posedge clk) begin: stage_reg_inst
        if (~rstn) begin // 
          for (i = 1; i < s; i = i + 1) begin
            stage_reg[i][base(k)+:`wth(k)] <= {(`wth(k)){1'b0}};
          end
        end else begin
          //      
          stage_reg[0][base(k)+:`wth(k)] <= stage_comb[0][base(k)+:`wth(k)];
          //    
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

  //        
  always @(posedge clk) begin
    if (~rstn) begin // 
      valid <= 1'b0;
      res <= {w{1'b0}};
      valid_reg <= {s{1'b0}};
      for (i = 1; i < s; i = i + 1) begin
        stage_op1[i] <= {w{1'b0}};
        stage_op2[i] <= {w{1'b0}};
        c_reg[i] <= 1'b0;
      end
    end else begin
      valid_reg[0] <= valid_op1 & valid_op2; //     
      //        
      for (i = 1; i < s; i = i + 1) begin
        valid_reg[i] <= valid_reg[i-1];
        c_reg[i] <= c_comb[i];
        stage_op1[i] <= stage_op1[i-1];
        stage_op2[i] <= stage_op2[i-1];
      end
      res <= stage_reg[s-1]; //     
      valid <= valid_reg[s-1]; //   
    end
  end

endmodule
