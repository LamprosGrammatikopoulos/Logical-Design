module BinaryAdder8bit(S[7:0],cout,A[7:0],B[7:0],cin);
  
	input cin;
	input [7:0]A,B;
	output cout;
	output [7:0]S;

	wire w1,w2,w3,w4,w5,w6,w7;

	FA g0(S[0],w1,A[0],B[0],cin);
	FA g1(S[1],w2,A[1],B[1],w1);
	FA g2(S[2],w3,A[2],B[2],w2);
	FA g3(S[3],w4,A[3],B[3],w3);
	FA g4(S[4],w5,A[4],B[4],w4);
	FA g5(S[5],w6,A[5],B[5],w5);
	FA g6(S[6],w7,A[6],B[6],w6);
	FA g7(S[7],cout,A[7],B[7],w7);


endmodule

