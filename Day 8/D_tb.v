module D_tb;
	reg RSTN,EN, D;
	wire Q, Qn;

reg [2:1] delay1;
reg [1:0] delay2;
integer i;
	
D_latch dut(RSTN,EN,D,Q,QN);

initial begin
	RSTN<=0;
	EN<=0;
	D<=0;
	
	#10 RSTN<=1;
	
	for (i=0;i<5;i=i+1) begin
		delay1 = $random;
		delay2 = $random;
		#(delay2) EN<=~EN;
		#(delay1) D<=i;
	end
end

endmodule

		