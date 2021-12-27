// ADDER
// ---------------------------------------------------------------------
// adds one to the input, asserts immediatelly
//
// ---------------------------------------------------------------------

module ADDER (in, out);

// ------------------------ PORT declaration ------------------------ //
input [7:0] in;
output [7:0] out;

// ------------------------- Registers/Wires ------------------------ //
reg [7:0] tmp_out;


always @(*)
begin
	tmp_out = in + 8'b00000001;
	
end

// Assign output and condition flags
assign out = tmp_out;


endmodule
