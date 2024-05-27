module BCd2XS3(
	input [3:0] a,
	output reg [3:0] y
);

always@(*) begin
	if (a<4'b1010) begin
		y <= a + 4'b0011;
	end else begin
		y <= 4'b1111;
	end
end

endmodule
