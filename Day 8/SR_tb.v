module SR_tb;
	reg S,R;
	wire Q,Qn;
	
SR_latch dut(S,R,Q,Qn);

initial begin
	#10 S=1'b0; R=1'b0;
	#10 S=1'b0; R=1'b1;
	#10 S=1'b1; R=1'b0;
	#10 S=1'b0; R=1'b0;
	#10 S=1'b1; R=1'b1;
	#10;
end

endmodule
