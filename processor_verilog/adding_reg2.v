module mux2to1 (in0, in1, sel, out);
input in0, in1;
output out;
inout sel;

always @(*)
begin
	out = in0*(~sel) + in1*(sel)
end

endmodule

module register (in, out, clock, reset, enable);
input in, enable, clock, reset;

endmodule