module ALU(
	input clk,
	input [7:0] A,
	input [7:0] B,
	input [3:0] select,
	output reg [15:0] y,
	output reg carry,
	output reg zero
);

reg [7:0] Ain, Bin;
reg [3:0] s;
reg c, z;
reg [15:0] out;

initial begin
	y = 0;
	carry = 0;
	zero = 0;
end

always@(posedge clk) begin
		Ain <= A;
		Bin <= B;
		s <= select;
		carry <= c;
		zero <= z;
		y <= out;
end

always@(Ain, Bin, s) begin
	case(select)
		4'd0 : begin //add
			out = {8'd0, Ain + Bin};
			c = out[8];
		end
		4'd1 : begin //sub
			out = {8'd0, Ain - Bin};
			c = out[8];
		end
		4'd2 : begin //mul
			out = (Ain*Bin);
		end
		4'd3 : begin //div
			out = (Ain/Bin);
		end
		4'd4 : begin //increment
			out = {8'd0, Ain + 1'b1};
			c = out[8];
		end
		4'd5 : begin //decrement
			out = {8'd0, Ain - 1'b1};
			c = out[8];
		end
		4'd6 : begin //bitwise AND
			out = {8'd0, Ain & Bin};
		end
		4'd7 : begin //bitwise OR
			out = {8'd0, Ain | Bin};
		end
		4'd8 : begin //bitwise XOR
			out = {8'd0, Ain ^ Bin};
		end
		4'd9 : begin //bitwise NAND
			out = {8'd0, ~(Ain & Bin)};
		end
		4'd10 : begin //bitwise NOR
			out = {8'd0, ~(Ain | Bin)};
		end
		4'd11 : begin //bitwise XNOR
			out = {8'd0, ~(Ain ^ Bin)};
		end
		4'd12 : begin //shift right
			c = Ain[0];
			out = {8'd0, (Ain>>1)};
		end
		4'd13 : begin //shift left
			c = Ain[7];
			out = {8'd0, (Ain<<1)};
		end
		4'd14 : begin //rotate right
			out = {8'd0, Ain[0], Ain[7:1]};
		end
		4'd15 : begin //rotate left
			out = {8'd0, Ain[6:0], Ain[7]};
		end
		default : out = 16'd0;
	endcase
	if(!out) z = 1;
end

endmodule
