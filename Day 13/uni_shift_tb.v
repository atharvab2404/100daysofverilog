module uni_shift_tb;
	reg clk;
	reg clear;
	reg [3:0] in;
	reg serial_in_right;
	reg serial_in_left;
	reg [1:0] select;
	wire [3:0] out;
	
uni_shift_register dut(clk, clear, in, serial_in_right, serial_in_left, select, out);

always #2 clk = ~clk;

initial begin
	clk = 0;
	clear = 0;
	#3 clear = 1;
	
	in = 4'b1101;
	serial_in_left = 1'b1;
	serial_in_right  = 1'b0;
	
	select = 2'b11; #10;
	select = 2'b01; #20;
	in = 4'b1101;
	select = 2'b11; #10;
	select = 2'b10; #20;
	select = 2'b00; #20;
	
	$finish;
end

endmodule
