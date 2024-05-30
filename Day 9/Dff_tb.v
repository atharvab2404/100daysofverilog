module Dff_tb;
	reg CLK, RSTN, D;
	wire Q;

D_flipflop dut(CLK, RSTN, D, Q);

initial begin
	CLK = 0;
	RSTN = 0;
	forever #2 CLK = ~CLK;
	
end

initial begin
	D<=0;
	#5 RSTN = 1;
	#10 D = 1;
	#20 D = 0;
	#5 D =1;
	#100 $finish;
end

endmodule
