module ROM_testbench();

reg [7:0] addr;
reg clk;

wire [31:0] dout;

ROM dut(.addr(addr), .dout(dout), .clk(clk));

initial begin

	clk = 0;
	//Start
	//First
	#50
	addr = 8'd00;
	clk = 1;
	#10;
	clk = 0;
	#10;
	//Second
	addr = 8'd04;
	clk = 1;
	#10;
	clk = 0;
	#10;
	//Third
	addr = 8'd08;
	clk = 1;
	#10;
	clk = 0;
	#10;
	//Fourth
	addr = 8'd12;
	clk = 1;
	#10;
	clk = 0;
	#10;
	//Fifth And So On
	addr = 8'd16;
	clk = 1;
	#10;
	clk = 0;
	#10;

	addr = 8'd20;
	clk = 1;
	#10;
	clk = 0;
	#10;

	addr = 8'd24;
	clk = 1;
	#10;
	clk = 0;
	#10;

	addr = 8'd28;
	clk = 1;
	#10;
	clk = 0;
	#10;
	$stop;

end

endmodule
