module JK_flipflop(
	input CLK,
	input RSTN,
	input J,
	input K,
	output  reg Q
);

always@(posedge CLK) begin
	if(!RSTN) Q<= 0;
		else begin
			case({J,K})
				2'b00 : Q <= Q;
				2'b01 : Q <= 1'b0;
				2'b10 : Q <= 1'b1;
				2'b11 : Q <= ~Q;
			endcase
		end
end

endmodule
