module mux_tb;
	reg [3:0] a1, a2, a3, a4;
	reg [1:0] s;
	wire [3:0] y;

mux4x1 dut(a1,a2,a3,a4,s,y);

initial begin
	#10 a1 = 4'b0001; a2 = 4'b0010; a3 = 4'b0100; a4 = 4'b1000; s = 2'b00;
	#10 a1 = 4'b0001; a2 = 4'b0010; a3 = 4'b0100; a4 = 4'b1000; s = 2'b01;
	#10 a1 = 4'b0001; a2 = 4'b0010; a3 = 4'b0100; a4 = 4'b1000; s = 2'b10;
	#10 a1 = 4'b0001; a2 = 4'b0010; a3 = 4'b0100; a4 = 4'b1000; s = 2'b11;
	#10;
end

endmodule
