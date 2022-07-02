module D_latch(
	input wire d, input wire e,
	output wire q, output wire nq
);
	wire r;
	wire s;
	assign r = ~d&e;
	assign s = d&e;
	SR_latch SR_latch(r, s, q, nq);
endmodule
