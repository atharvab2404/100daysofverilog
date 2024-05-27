module half_addsub (
	input a,
	input b,
	input s,
	output reg sum,
	output reg carry
);

// 0 for add
// 1 for sub

always@(*) begin
	sum <= a^b;
	if(s==1'b0) begin
		carry <= a&&b;
	end else begin
		carry <= (~a)&&b;
	end
end

endmodule

