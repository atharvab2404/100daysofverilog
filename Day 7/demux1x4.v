module demux1x4(
	input [3:0] a,
	input [1:0] s,
	output reg [3:0] y1, y2, y3, y4
);

always@(*) begin
	case(s)
		2'b00 : y1 = a;
		2'b01 : y2 = a;
		2'b10 : y3 = a;
		2'b11 : y4 = a;
	endcase
end

endmodule
