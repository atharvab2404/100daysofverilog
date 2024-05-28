module JK_tb;
	reg J,K;
	wire Q;
	
JK_latch dut(J,K,Q);

initial begin
	#10 J=1'b0; K=1'b0;
	#10 J=1'b0; K=1'b1;
	#10 J=1'b1; K=1'b0;
	#10 J=1'b0; K=1'b0;
	#10 J=1'b1; K=1'b1;
	#10;
end

endmodule
