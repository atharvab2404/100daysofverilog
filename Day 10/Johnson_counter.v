module Johnson_counter(
	input CLK,
	input RSTN,
	output [3:0] Q, Qn
);

D_flipflop u1(CLK, RSTN, Qn[3], Q[0], Qn[0]);
D_flipflop u2(CLK, RSTN, Q[0], Q[1], Qn[1]);
D_flipflop u3(CLK, RSTN, Q[1], Q[2], Qn[2]);
D_flipflop u4(CLK, RSTN, Q[2], Q[3], Qn[3]);

endmodule
