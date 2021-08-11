module testdecoder();

	reg a,b,c;
	wire f;

	decoder circuit(f,a,b,c);

	initial begin 

       a=0; b=1; c=0; #100

		$finish;
	end

endmodule
