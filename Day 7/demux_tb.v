module demux_tb;
	reg [3:0] a;
	reg [1:0] s;
	wire [3:0] y1, y2, y3, y4;
	
demux1x4 dut(a,s,y1,y2,y3,y4);

initial begin
	#10 a = 4'b0110; s = 2'b00;
	#10 a = 4'b0110; s = 2'b01;
	#10 a = 4'b0110; s = 2'b10;
	#10 a = 4'b0110; s = 2'b11;
	#10;
end

endmodule
