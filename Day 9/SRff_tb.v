module SRff_tb;
	reg CLK, RSTN, S, R;
	wire Q;

SR_flipflop dut(CLK, RSTN, S, R, Q);

initial begin
	CLK = 0;
	RSTN = 0;
	#10 RSTN = 1;
	forever #2 CLK = ~CLK;
	#100 $finish;
end

initial begin
	#10 S=1'b0; R=1'b0;
	#10 S=1'b0; R=1'b1;
	#10 S=1'b1; R=1'b0;
	#10 S=1'b0; R=1'b0;
	#10 S=1'b1; R=1'b1;
	#10;
	$finish;
end

endmodule
