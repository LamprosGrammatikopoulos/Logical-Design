module testcomparator();

	reg [2:0]A,B;
	wire a,b,ab;

	comparator circuit(a,b,ab,A[2:0],B[2:0]);

	initial begin 

       A=3'b010; B=3'b001; #100

		$finish;
	end

endmodule
