module tb();

reg clk, reset;

processor p0(
	.clk(clk),
	.reset(reset)
);

always
#5 clk = ~clk;

initial
begin
	clk = 0;
	reset = 1;
	#10 reset = 0;
end

endmodule;