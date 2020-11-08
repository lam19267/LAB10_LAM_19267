module BT(input wire enable, input wire[3:0] A, output wire[3:0] Y);
  assign Y = enable ? A:4'bz;
endmodule //

module ACCU(input wire clk, reset, enable, input wire[3:0]A, output reg[3:0] Y);
 always @ (posedge clk or posedge reset) begin
    if (reset)
      Y <= 4'b0000;
    else if (enable)
      Y <= A;
  end
endmodule

module ALU(input wire [3:0] A, input wire [3:0] B, input wire [2:0] R, output reg C, Ze, output reg [4:0] Y, output reg[3:0] Q);
  always @ ( * ) begin
  case(R)
    3'b000: begin
      Y = 5'b00000;
      Y = A;
      C = 1'b0;
      Ze = 1'b0;
      Q = Y[3:0];
    end

    3'b001: begin
      Y[4:0] = 5'b00000;
      Y = A - B;
      C = Y[4];
      Ze = (Y == 5'b00000);
      Q = Y[3:0];
    end

    3'b010: begin
      Y[4:0] = 5'b00000;
      Y = B;
      C = 1'b0;
      Ze = 1'b0;
      Q = Y[3:0];
    end

    3'b011: begin
      Y[4:0] = 5'b00000;
      Y = A + B;
      C = Y[4];
      Ze = (Y == 5'b00000);
      Q = Y[3:0];
    end

    3'b100: begin
      Y = 5'b00000;
      Y = ~(A & B);
      C = 1'b0;
      Ze = 1'b0;
      Q = Y[3:0];
    end
  endcase
  end
endmodule

module CONJ(input wire enable, enable2, input wire[3:0] A, input wire clk, reset, enable1, input wire [2:0] R, output wire C, Ze,output wire[3:0] YF);
  wire[3:0] Y1;
  wire[3:0] Y2;
  wire [4:0] Y;
  wire[3:0] Q;

  BT U1(enable, A, Y1);
  ACCU U2(clk, reset, enable1, Q, Y2);
  ALU U3(Y1, Y2, R, C, Ze, Y, Q);
  BT U4(enable2, Q, YF);
endmodule
