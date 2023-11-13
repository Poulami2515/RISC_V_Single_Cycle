// purpose of top module
// communicates with all the component modules
// communicates with testbench module
// testbench for individual modules are no longer required

//including modules
`include "P_C.v"
`include "instruction_memory.v"
`include "Register_file.v"
`include "Sign_Extend.v"
`include "ALUa.v"
`include "Control_Unit.v"
`include "Data_Memory.v"
`include "PC_Adder.v"

module Single_Cycle_Top(clk, reset);
	input clk, reset;
	wire [31:0] PC_Top, RD_Instr, RD1_Top, Imm_Ext_Top, ALU_Control_Top, ALU_Result, ReadData, PCPlus4;
	wire Regwrite;
	
	P_C PCModule(
	.clk(clk),
	.reset(reset),
	.PC(PC_Top),
	.PCNext(PCPlus4)
	);
	
	PC_Adder PAModule(
	.a(PC),
	.b(32'd4),
	.c(PCPlus4)
	);
	
	Instr_Mem InModule(
	.A(PC_Top),
	.RD(RD_Instr),
	.reset(reset)
	);
	
	reg_file RegModule(
	.A1(RD_Instr[19:15]),
	.A2(),
	.A3(RD_Instr[11:7]),
	.RD1(RD1_Top),
	.RD2(),
	.WD3(ReadData),
	.WE3(RegWrite),
	.reset(reset),
	.clk(clk)
	);
	
	Sign_Extend ExModule(
	.In(RD_Instr),
	.Imm_Ext(Imm_Ext_Top)
	);
	
	alu ALUModule(
	.A(RD1_Top),
	.B(Imm_Ext_Top),
	.ALUControl(ALU_Control_Top),
	.Result(ALU_Result), 
	.N(), 
	.Z(), 
	.C(), 
	.V()
	);
	
	ControlUnit CUModule(
	.op(RD_Instr[6:0]), 
	.RegWrite(RegWrite), 
	.ImmSrc(), 
	.ALUSrc(), 
	.MemWrite(), 
	.ResultSrc(), 
	.branch(), 
	.func3(RD_Instr[14:12]), 
	.func7(), 
	.ALUControl(ALU_Control_Top)
	);
	
	data_mem dataModule(
	.clk(clk), 
	.A(ALU_Result), 
	.WD(), 
	.RD(ReadData), 
	.WE(), 
	.reset(reset)
	);	
	
endmodule
