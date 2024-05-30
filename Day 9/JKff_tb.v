module JKff_tb;
	reg CLK, RSTN, J, K;
	wire Q;

JK_flipflop dut(CLK, RSTN, J, K, Q);

initial begin
	CLK = 0;
	RSTN = 0;
	#10 RSTN = 1;
	forever #2 CLK = ~CLK;
	#100 $finish;
end

initial begin
	#10 J=1'b0; K=1'b0;
	#10 J=1'b0; K=1'b1;
	#10 J=1'b1; K=1'b0;
	#10 J=1'b0; K=1'b0;
	#10 J=1'b1; K=1'b1;
	#10;
	$finish;
end

endmodule