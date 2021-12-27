// ---------------------------------------------------------------------
// TEMP VECTOR REGISTER
// ---------------------------------------------------------------------
//
// Major Functions:	Registers memory stores one 8-bits data
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

module VTempReg
(
clock, reset,
vectinwire, vectoutwire
);

// ------------------------ PORT declaration ------------------------ //
input clock;
input [7:0] vectinwire;
input XWrite;
input reset;
output reg [7:0] vectoutwire;


// ------------------------- Registers/Wires ------------------------ //



// Synchronously write data to the register file;
// also supports an asynchronous reset, which clears all registers
always @(posedge clock or posedge reset)
begin
	if (reset) begin
		x = 0;
	end	else begin
		if (XWrite) begin
			vectoutwire <= vectinwire
		end
	end
end


endmodule
