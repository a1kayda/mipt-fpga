`timescale 1ns/100ps
module testbench();

reg clk = 1'b0;
always begin
  #1 clk = ~clk;
end
reg d = 0;
wire q;
D_flip_flop D_flip_flop(.d(d), .e(clk), .q(q), .nq(nq));
initial begin
  $display("start");
  $dumpfile("test.vcd");
  $dumpvars;
  #3 d = 1;
  #2 d = 0;
  #4 d = 1;
  #3 d = 0;
  #4 $finish;
end
endmodule
