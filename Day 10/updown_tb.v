module updown_tb;
	reg CLK, RSTN;
	wire [2:0] Q, Qn;
	
updown_counter dut(CLK, RSTN, Q, Qn);

always #10 CLK <= ~CLK;

initial
begin
  CLK <= 1'b0;
  RSTN = 1'b0;

  #40
  RSTN= 1'b1;
end

endmodule