// ---------------------------------------------------------------------
// VECTOR REGISTER
// ---------------------------------------------------------------------
//
// Major Functions:	Registers memory stores four 8-bits data
//					 
// Input(s):		1. reset: 	clear registers value to zero
//					2. clock: 	data written at positive clock edge
//					3. vectinwire:	wire that links vregfile with
//									x1 or x2 register
//					4. XWrite: whether to write to register or not
//					
//
// Output(s):		1. vectoutwire:	data output of the register 
// ---------------------------------------------------------------------

module VR
(
clock, reset, XWrite,
vectinwire, vect_0, vect_1, vect_2, vect_3
);

// ------------------------ PORT declaration ------------------------ //
input clock;
input [31:0] vectinwire;
input XWrite;
input reset;
reg [31:0] x;
output [7:0] vect_0, vect_1, vect_2, vect_3;


// ------------------------- Registers/Wires ------------------------ //



// Synchronously write data to the register file;
// also supports an asynchronous reset, which clears all registers
always @(posedge clock or posedge reset)
begin
	if (reset) begin
		x = 0;
	end	else begin
		if (XWrite) begin
			x = vectinwire;
		end
	end
end

assign vect_0 = x[31:24];
assign vect_1 = x[23:16];
assign vect_2 = x[15:8];
assign vect_3 = x[7:0];

endmodule
