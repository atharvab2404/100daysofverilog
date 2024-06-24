module UART_rx(
	input clk,
	input rx,
	output reg [7:0] data,
	output reg rx_recieved
);

initial begin
	data <= 0;
	rx_recieved <= 0;
end

reg [8:0] counter =0;
reg [7:0] message;

parameter start = 4'd0;
parameter d1 = 4'd1;
parameter d2 = 4'd2;
parameter d3 = 4'd3;
parameter d4 = 4'd4;
parameter d5 = 4'd5;
parameter d6 = 4'd6;
parameter d7 = 4'd7;
parameter d8 = 4'd8;
parameter stop = 4'd9;
parameter idle = 4'd10;

reg [3:0] state = idle;

always@(posedge clk) begin
	case(state)
		idle : begin
			counter <= 0;
			rx_recieved <= 0;
			if(rx == 1'b0) begin
				state <= start;
			end else begin
				state <= idle;
			end
		end
		start : begin
			if(counter < 9'd216) begin
				counter <= counter + 1;
			end else begin
				counter <= 0;
				state <= d1;
			end
		end
		d1 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[0] <= rx;
				counter <= 0;
				state <= d2;
			end
		end
		d2 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[1] <= rx;
				counter <= 0;
				state <= d3;
			end
		end
		d3 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[2] <= rx;
				counter <= 0;
				state <= d4;
			end
		end
		d4 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[3] <= rx;
				counter <= 0;
				state <= d5;
			end
		end
		d5 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[4] <= rx;
				counter <= 0;
				state <= d6;
			end
		end
		d6 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[5] <= rx;
				counter <= 0;
				state <= d7;
			end
		end
		d7 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[6] <= rx;
				counter <= 0;
				state <= d8;
			end
		end
		d8 : begin
			if(counter<9'd433) begin
				counter <= counter + 1;
			end else begin
				message[7] <= rx;
				counter <= 0;
				state <= stop;
			end
		end
		stop : begin
			if(counter<649) begin
				counter <= counter +1;
			end else begin
				data <= message;
				rx_recieved <= 1;
				counter <= 0;
				state <= idle;
			end
		end
	endcase
end

endmodule
			
				
			 
