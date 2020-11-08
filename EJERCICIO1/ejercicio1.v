module contador(input wire clk, reset, enable, loadbit, input wire[11:0] load ,output reg [11:0]cont);
  always @ (posedge clk or posedge reset or posedge loadbit) begin
  if (reset)
    cont <= 12'b000000000000;
  else if (loadbit)
      cont <= load;
  else if (enable)
      cont <= cont + 12'b1;
  end
endmodule

module ROM(input wire[11:0] A, output  wire[7:0] Y);
  assign Y = Memoria[A];
  reg[7:0] Memoria[0:4095];
  initial begin
    $readmemb("Memoria.list", Memoria);
  end
endmodule


module FFFLETCH(input wire clk, reset, enable, input wire [7:0]A, output reg[3:0] Y, output reg[3:0] Y1);
 always @ (posedge clk or posedge reset) begin
    if (reset)
      Y <= 7'b00000000;
    else if(enable)
      Y <= A[3:0];
      Y1 <= A[7:4];
  end
endmodule

module CONJ(input wire clk, reset, enable, loadbit, input wire[11:0] load, enable1, output wire[3:0] Y, Y1);
  wire[11:0] A;
  wire[7:0] B;
  contador C1(clk, reset, enable, loadbit, load, A);
  ROM C2(A, B);
  FFFLETCH C3(clk, reset, enable1, B, Y, Y1);
endmodule
