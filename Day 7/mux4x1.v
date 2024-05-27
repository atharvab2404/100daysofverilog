module mux4x1(
	input [3:0] a1, a2, a3, a4,
	input [1:0] s,
	output reg [3:0] y
);

always@(*) begin
	case(s)
		2'b00 : y = a1;
		2'b01 : y = a2;
		2'b10 : y = a3;
		2'b11 : y = a4;
		default : y = 4'b0000;
	endcase
end

endmodule
