module JK_latch(
	input J,
	input K,
	output reg Q
);

initial begin
	Q=0;
end
always@(*) begin
	case({J,K})
		2'b00 : Q <= Q;
		2'b01 : Q <= 0;
		2'b10 : Q <= 1;
		2'b11 : Q <= ~Q;
	endcase
end

endmodule

	