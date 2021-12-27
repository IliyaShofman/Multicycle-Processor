// ---------------------------------------------------------------------
// 		VECTOR REGISTER FILE
// ---------------------------------------------------------------------
//
// Major Functions:	Registers memory stores four 8-bits data
//					 
// Input(s):		1. reset: 	clear registers value to zero
//					2. clock: 	data written at positive clock edge
//					3. vreg1:	indicate which register will be 
//					   			output through (output)data1
//					4. vreg2:	indicate which register will be 
//								output through (output)data2
//					5. vregw:	indicate which register will be 
//								overwritten with the data from
//								(input)dataw
//					6. vdataw:	input data to be written into register
//					7. VRFWrite:	write enable single, allow the data to
//								be written at the positive edge
//
// Output(s):		1. vdata1:	data output of the register (input)reg1
//					2. vdata2:	data output of the register (input)reg2
//					3. v0-v3:	data stored by registex0 to registex3
//
// ---------------------------------------------------------------------

module VRF
(
clock, vreg1, vreg2, vregw,
vdataw, VRFWrite, vdata1, vdata2,
x0, x1, x2, x3, reset
);

// ------------------------ PORT declaration ------------------------ //
input clock;
input [1:0] vreg1, vreg2, vregw;
input [31:0] vdataw;
input VRFWrite;
input reset;
output [31:0] vdata1, vdata2;
output [31:0] x0, x1, x2, x3;

// ------------------------- Registers/Wires ------------------------ //
reg [31:0] v0, v1, v2, v3;
reg [31:0] data1_tmp, data2_tmp;

// Asynchronously read data from two registers
always @(*)
begin
	case (vreg1)
		0: data1_tmp = v0;
		1: data1_tmp = v1;
		2: data1_tmp = v2;
		3: data1_tmp = v3;
	endcase
	case (vreg2)
		0: data2_tmp = v0;
		1: data2_tmp = v1;
		2: data2_tmp = v2;
		3: data2_tmp = v3;
	endcase
end

// Synchronously write data to the register file;
// also supports an asynchronous reset, which clears all registers
always @(posedge clock or posedge reset)
begin
	if (reset) begin
		v0 = 0;
		v1 = 0;
		v2 = 0;
		v3 = 0;
	end	else begin
		if (VRFWrite) begin
			case (vregw)
				0: v0 = vdataw;
				1: v1 = vdataw;
				2: v2 = vdataw;
				3: v3 = vdataw;
			endcase
		end
	end
end

// Assign temporary values to the outputs
assign vdata1 = data1_tmp;
assign vdata2 = data2_tmp;

assign x0 = v0;
assign x1 = v1;
assign x2 = v2;
assign x3 = v3;

endmodule
