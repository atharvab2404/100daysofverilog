module clk_divider(
	input clk1MHZ,
	output reg clk125KHZ
);

initial begin
	clk125KHZ <= 0;
end

reg [2:0] counter = 0;

always@(posedge clk1MHZ) begin
	if(!counter) clk125KHZ = ~clk125KHZ;
	counter = counter + 1'b1;
end

endmodule
		
	