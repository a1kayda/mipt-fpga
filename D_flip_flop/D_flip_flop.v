module D_flip_flop(
	input wire d, input wire e,
	output wire q, output wire nq
);
	wire w;
	D_latch master(.d(d), .e(!e), .q(w), .nq());
	D_latch slave(.d(w), .e(e), .q(q), .nq(nq));
endmodule
