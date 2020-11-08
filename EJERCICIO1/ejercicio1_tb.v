module testbench();
reg clk, reset, enable, loadbit, enable1;
reg[11:0] load;
wire[3:0] Y, Y1;
CONJ C4(clk, reset, enable, loadbit, load, enable1, Y, Y1);

always
  #5 clk <= ~clk;

initial begin
  $display("uP");
  $display("clk reset enable loadbit load enable1 | Y Y1");
  $display("-----------|---------");
  $monitor("%b %b %b %b %b %b | %b %b", clk, reset, enable, loadbit, load, enable1, Y1, Y);
      clk = 0; reset = 0; enable = 0; loadbit = 0; load = 12'b000000000000; enable1 = 0;
  #1  reset = 1; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;
  #1  reset = 0; enable = 1; loadbit = 0; load = 12'b000000000000; enable1 = 1;



end

initial
#500 $finish;
initial begin
  $dumpfile("ejercicio1_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule