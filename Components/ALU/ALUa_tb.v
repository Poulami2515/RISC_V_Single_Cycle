`timescale 1ns/1ps
module alu_tb();
  // Inputs
  reg [31:0] A, B;
  reg [2:0] ALUControl;

  // Outputs
  wire [31:0] Result;
  wire N,Z,C,V;

  // Instantiate the ALU module
  alu a1(
    .A(A),
    .B(B),
    .ALUControl(ALUControl),
    .Result(Result),
    .N(N),
    .Z(Z),
    .C(C),
    .V(V)
  );

  // Initial block for test stimulus
  initial begin
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b000;
    $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b, N:%b, Z:%b, C:%b, V:%b", $time,A,B,ALUControl,Result,N,Z,C,V);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b001;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b, N:%b, Z:%b, C:%b, V:%b", $time,A,B,ALUControl,Result,N,Z,C,V);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b010;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b, N:%b, Z:%b, C:%b, V:%b", $time,A,B,ALUControl,Result,N,Z,C,V);
    A = 32'hAAAA_AAAA; B = 32'h5555_5555; ALUControl = 3'b100;
    #10 $display("Simulation time:%t, A:%b, B:%b, ALUControl:%b, Result:%b, N:%b, Z:%b, C:%b, V:%b", $time,A,B,ALUControl,Result,N,Z,C,V);
    end
    initial begin
    	$dumpfile("dump.vcd");
    	$dumpvars(0, alu_tb);
    end
endmodule
