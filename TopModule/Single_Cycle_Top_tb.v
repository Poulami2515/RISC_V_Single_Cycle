module Single_Cycle_Top_tb();
	reg clk=1'b1, reset;
	Single_Cycle_Top DUT(
	.clk(clk),
	.reset(reset)
	);
	
	initial begin
		$dumpfile("SingleCycle.vcd");
		$dumpvars(0, Single_Cycle_Top_tb);
	end	
	always begin
		clk = ~clk;
		#50;
	end
	initial begin
		reset = 1'b0;
		#150;
		reset = 1'b1;
		#500;
		$finish;
	end
endmodule
