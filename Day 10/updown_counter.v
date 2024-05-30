module updown_counter(
	input CLK,
	input RSTN,
	output [2:0] Q, Qn    //Q for up count, Qn for down count
);

D_flipflop u1(CLK, RSTN, Qn[0], Q[0], Qn[0]);
D_flipflop u2((~Q[0]), RSTN, Qn[1], Q[1], Qn[1]);
D_flipflop u3((~Q[1]), RSTN, Qn[2], Q[2], Qn[2]);

endmodule
