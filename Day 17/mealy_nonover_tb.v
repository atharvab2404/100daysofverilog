module mealy_nonover_tb;
	reg clk;
	reg rst;
	reg din;
	wire dout;
	
mealy_nonover dut(clk, rst, din, dout);

initial clk =0;
always #2 clk = ~clk;

initial begin
	din = 0;
	#1 rst = 1;
	#2 rst = 0;
	
	#3 din = 1;
	#4 din = 1;
	#4 din = 0;
	#4 din = 1;
	#4 din = 0;
	#4 din = 1;
	#4 din = 0;
	#4 din = 1;
	#4 din = 1;
	#4 din = 0;
	#4 din = 1;
	#4 din = 0;
	#4 din = 1;
	#4 din = 0;
	#10;
	$finish;
end

endmodule