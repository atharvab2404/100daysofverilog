module D_flipflop(
	input CLK,
	input RSTN,
	input D,
	output reg Q
);

always@(posedge CLK) begin
	if(!RSTN) Q<=0;  //synchronous reset
	else Q<=D;
end

endmodule
