module fas_tb;
	reg a,b,cin,s;
	wire sum,cout;
	
full_addsub dut(a,b,cin,s,sum,cout);

initial begin
	#10 a=1'b0; b=1'b0; cin = 1'b0; s=1'b0;
	#10 a=1'b0; b=1'b0; cin = 1'b1; s=1'b0;
	#10 a=1'b0; b=1'b1; cin = 1'b0; s=1'b0;
	#10 a=1'b0; b=1'b1; cin = 1'b1; s=1'b0;
	#10 a=1'b1; b=1'b0; cin = 1'b0; s=1'b0;
	#10 a=1'b1; b=1'b0; cin = 1'b1; s=1'b0;
	#10 a=1'b1; b=1'b1; cin = 1'b0; s=1'b0;
	#10 a=1'b1; b=1'b1; cin = 1'b1; s=1'b0;
	#10 a=1'b0; b=1'b0; cin = 1'b0; s=1'b1;
	#10 a=1'b0; b=1'b0; cin = 1'b1; s=1'b1;
	#10 a=1'b0; b=1'b1; cin = 1'b0; s=1'b1;
	#10 a=1'b0; b=1'b1; cin = 1'b1; s=1'b1;
	#10 a=1'b1; b=1'b0; cin = 1'b0; s=1'b1;
	#10 a=1'b1; b=1'b0; cin = 1'b1; s=1'b1;
	#10 a=1'b1; b=1'b1; cin = 1'b0; s=1'b1;
	#10 a=1'b1; b=1'b1; cin = 1'b1; s=1'b1;
	#10;
end

endmodule
