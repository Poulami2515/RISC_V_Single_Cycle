'include "main_decoder.v"
'include "alu_decoder.v"

module ControlUnit(op, RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, branch, funct3, funct7, ALUControl);
	input [6:0]0p,funct7:
	input [2:0]funct3;
	output RegWrite, ALUSrC,Menkrite,Resultsre,Branch;
	output [1:0]ImmSrc;
	output [2:0]ALUControl;
	
	wire [1:0]ALUOp:
	
	main_decoder MainModule(
	.op(op).
	.RegWrite(RegWrite),
	.ImmSrc(ImmSrc),
	.MemWrite (MemWrite),
	.ResultSrc(ResultSrc).
	.branch(branch),
	.ALUSrc (ALuSrc),
	.ALUOp(ALUOp)
	);

	alu_decoder aluModule(
	.ALUOp(ALUOp).
	.funct3(funct3),
	.funct7(funct7),
	.op(op).
	.ALUCntrol(ALUControl)
	);
endmodule
