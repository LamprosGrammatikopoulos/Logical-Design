module comparator(a,b,ab,A[2:0],B[2:0]);
  
	input [2:0]A,B;
	output a,b,ab;
       
	wire na0,na1,na2,nb0,nb1,nb2;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;

       not a0(na0,A[0]);
       not a1(na1,A[1]);
       not a2(na2,A[2]);
       not b0(nb0,B[0]);
       not b1(nb1,B[1]);
       not b2(nb2,B[2]);
       and b0(w6,nb0,A[0]);
       and a0(w5,na0,B[0]);
       and b1(w4,nb1,A[1]);
       and a1(w3,na1,B[1]);
       and b2(w2,nb2,A[2]);
       and a2(w1,na2,B[2]);
       nor g1(w7,w1,w2);
       nor g2(w8,w3,w4);
       nor g3(w9,w5,w6);
       and g4(w10,w7,w3);
       and g5(w11,w7,w4);
       and g6(w12,w7,w8,w5);
       and g7(w13,w7,w8,w6);
       or g8(b,w1,w10,w12);
       or g9(a,w2,w11,w13);
       and g10(ab,w7,w8,w9);

endmodule
