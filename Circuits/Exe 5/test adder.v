module Test();

	reg [7:0]A,B,cin;
	wire [7:0]S,cout;

	BinaryAdder8bit circuit(S[7:0],cout,A[7:0],B[7:0],cin);

	initial begin 

       A[7]=0; A[6]=0; A[5]=0; A[4]=1; A[3]=0; A[2]=1; A[1]=0; A[0]=1; cin=0; #10
       B[7]=0; B[6]=0; B[5]=0; B[4]=1; B[3]=0; B[2]=1; B[1]=0; B[0]=1; cin=0; #10

       $finish;

	end

endmodule

