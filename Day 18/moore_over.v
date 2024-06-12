module moore_over(
	input clk,
	input rst,
	input din,
	output reg dout
);

//sequence - 1011

parameter S0 = 3'd0;
parameter S1 = 3'd1;
parameter S2 = 3'd2;
parameter S3 = 3'd3;
parameter S4 = 3'd4;

reg [2:0] state = S0;

always@(posedge clk or posedge rst) begin
	if(rst) begin
		dout <= 0;
		state <= S0;
	end else begin
		case(state)
			S0 : begin
				dout <= 0;
				if(din) state <= S1;
				else state <= S0;
			end
			S1 : begin
				dout <= 0;
				if(din) state <= S1;
				else state <= S2;
			end
			S2 : begin
				dout <= 0;
				if(din) state <= S3;
				else state <= S0;
			end
			S3 : begin
				dout <= 0;
				if(din) state <= S4;
				else state <= S2;
			end
			S4 : begin
				dout <= 1;
				if(din) state <= S1;
				else state <= S2;
			end
		endcase
	end
end

endmodule 