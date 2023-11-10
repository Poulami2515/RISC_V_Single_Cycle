`timescale 1ns/1ps
module alu_tb();
  // Inputs
  reg [31:0] A, B;
  reg [2:0] ALUControl;

  // Outputs
  wire [31:0] Result;

  // Instantiate the ALU module
  alu a1(
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .Result(Result)
  );

  // Initial block for test stimulus
  initial begin
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b000;
    $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b", $time,A,B,ALUControl,Result);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b001;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b", $time,A,B,ALUControl,Result);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b010;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b", $time,A,B,ALUControl,Result);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b100;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b", $time,A,B,ALUControl,Result);
    end
    initial begin
    	$dumpfile("dump.vcd");
    	$dumpvars(0, alu_tb);
    end
endmodule
