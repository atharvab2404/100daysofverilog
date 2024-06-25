module N_Bit_Parity_Generator #(
	parameter N_Bits = 8
)(
	input [N_Bits-1 : 0] DataInput,
	output OddParity,
	output EvenParity
);

assign EvenParity = ^DataInput;
assign OddParity = ~EvenParity;

endmodule