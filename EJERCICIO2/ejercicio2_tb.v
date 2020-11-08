module testbench();
reg enable;
reg[3:0] A;
reg clk, reset, enable1, enable2;
reg [2:0] R;
wire C, Ze;
wire [3:0] YF;
CONJ C4(enable, enable2, A, clk, reset, enable1, R, C, Ze, YF);

always
  #5 clk <= ~clk;

initial begin
  $display("uP");
  $display("enable enable2 A clk reset enable1  R | C Ze YF");
  $display("-----------|---------");
  $monitor("%b %b %b %b %b %b %b | %b %b %b", enable, enable2, A, clk, reset, enable1, R, C, Ze, YF);
      clk = 0; reset = 0; enable = 0; enable1 = 0; enable2 = 0; A =4'b0000; R =3'b000;
  #1  reset = 1; enable = 0; enable1 = 0; enable2 = 0; A =4'b0000;  R =3'b000;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0001;  R =3'b001;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0010;  R =3'b010;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0011;  R =3'b011;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0100;  R =3'b100;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0101;  R =3'b000;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0110;  R =3'b001;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b0111;  R =3'b010;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1000;  R =3'b011;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1001;  R =3'b100;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1010;  R =3'b000;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1011;  R =3'b001;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1100;  R =3'b010;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1101;  R =3'b011;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1110;  R =3'b100;
  #1  reset = 0; enable = 1; enable1 = 1; enable2 = 1; A =4'b1111;  R =3'b000;



end

initial
#50 $finish;
initial begin
  $dumpfile("ejercicio2_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
