// sum:
//a xor b xor cin
//ab + bcin + acin

//diff
//a xor b xor cin
//a'b + bcin + a'cin

module full_addsub(
	input a,
	input b,
	input cin,
	input s,
	output reg sum,
	output reg cout
);

// 0 for add
// 1 for diff

always@(*) begin
	sum <= a^b^cin;
	if(s==1'b0) begin
		cout <= (a&&b)||(a&&cin)||(b&&cin);
	end else begin
		cout <= ((~a)&&b)||((~a)&&cin)||(b&&cin);
	end
end

endmodule
