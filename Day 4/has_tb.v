module has_tb;
	reg a,b,s;
	wire sum, carry;
	
half_addsub dut(a,b,s,sum,carry);

initial begin
	#10 a=1'b0; b=1'b0; s=1'b0;
	#10 a=1'b0; b=1'b1; s=1'b0;
	#10 a=1'b1; b=1'b0; s=1'b0;
	#10 a=1'b1; b=1'b1; s=1'b0;
	#10 a=1'b0; b=1'b0; s=1'b1;
	#10 a=1'b0; b=1'b1; s=1'b1;
	#10 a=1'b1; b=1'b0; s=1'b1;
	#10 a=1'b1; b=1'b1; s=1'b1;
	#10;
end

endmodule
