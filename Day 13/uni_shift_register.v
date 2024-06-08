//structural modelling

module uni_shift_register(
	input clk,
	input clear,
	input [3:0] in,
	input serial_in_right,
	input serial_in_left,
	input [1:0] select,
	output [3:0] out
);

//s1 = 0,  s0 = 0  : no operation
//s1 = 0,  s0 = 1  : shift right
//s1 = 1,  s0 = 0  : shift left
//s1 = 1,  s0 = 1  : parallel load

wire mm1, mm2, mm3, mm4;
wire [3:0] outn;

mux4x1_1bit m1(out[3],serial_in_right ,out[2] , in[3], select, mm1);
mux4x1_1bit m2(out[2],out[3], out[1], in[2], select, mm2);
mux4x1_1bit m3(out[1],out[2], out[0], in[1], select, mm3);
mux4x1_1bit m4(out[0],out[1], serial_in_left, in[0], select, mm4);

D_flipflop d1(clk, clear, mm1, out[3], outn[3]);
D_flipflop d2(clk, clear, mm2, out[2], outn[2]);
D_flipflop d3(clk, clear, mm3, out[1], outn[1]);
D_flipflop d4(clk, clear, mm4, out[0], outn[0]);

endmodule
