module D_latch(
	input RSTN,
	input EN,
	input D,
	output reg Q,
	output reg Qn
);

always@(EN or RSTN or D) begin
	if(!RSTN) 
		Q <= 0;
	else
		if(EN)
			Q <= D;
	Qn <= ~Q;
end

endmodule
