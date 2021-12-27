// ---------------------------------------------------------------------
//		VECTOR ARITHMETIC LOGIC UNIT
// ---------------------------------------------------------------------
//
// Major Functions:	Mathematical Operator which calculates two inputs.
//					This operator performs five operations:	i) addition,
//					ii) subtraction, iii) oring, iv) nand, v) shift
// 
// Input(s):		1. in1: first eight-bit input data to be operated
//					2. in2: second eight-bit input data to be operated
//					3. VALUOp: select signal indicates operation to be
//							  performed
//
// Output(s):		1. out:	output value after performing mathematical
//							operation
//
// ---------------------------------------------------------------------

module VALU (in1, in2, out, VALUOp);

// ------------------------ PORT declaration ------------------------ //
input [7:0] in1, in2;
input [2:0] VALUOp;
output [7:0] out;


// ------------------------- Registers/Wires ------------------------ //
reg [7:0] tmp_out;

// -------------------------- ALU Operation ------------------------- //
// ALUOp encoding:													  //
//  000 = addition, 001 = subtraction, 010 = OR,					  //
//  011 = NAND, and 100 = Shift										  //
// ------------------------------------------------------------------ //
always @(*)
begin
	if (VALUOp == 0) begin //ADD == 3'b000
		tmp_out = in1 + in2;
	end	
	else if (VALUOp == 1) begin //MUL == 3'b001
		tmp_out = in1 * in2;
	end	
end

// Assign output and condition flags
assign out = tmp_out;


endmodule
