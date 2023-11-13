`include "main_decoder.v"
`include "alu_decoder.v"

module ControlUnit(op, RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, branch, func3, func7, ALUControl);
	input [6:0] op,func7;
	input [2:0]func3;
	output RegWrite, ALUSrc,MemWrite,ResultSrc,branch;
	output [1:0]ImmSrc;
	output [2:0]ALUControl;
	
	wire [1:0] ALUOp;
	
	main_decoder MainModule(
	.op(op),
	.RegWrite(RegWrite),
	.ImmSrc(ImmSrc),
	.MemWrite (MemWrite),
	.ResultSrc(ResultSrc),
	.branch(branch),
	.ALUSrc (ALuSrc),
	.ALUOp(ALUOp)
	);

	alu_decoder aluModule(
	.ALUOp(ALUOp),
	.func3(func3),
	.func7(func7),
	.op(op),
	.ALUControl(ALUControl)
	);
endmodule
