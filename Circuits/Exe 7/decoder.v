module decoder(f,a,b,c);
  
	input a,b,c;
	output f;
       
	wire wna,wnb,wnc;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;

       not gna(wna,a);
       not gnb(wnb,b);
       not gnc(wnc,c);

       and g0(w4,wna,wnb,wnc);
       and g1(w5,wna,wnb,c);
       and g2(w6,wna,b,wnc);
       and g3(w7,wna,b,c);
       and g4(w8,a,wnb,wnc);
       and g5(w9,a,wnb,c);
       and g6(w10,a,b,wnc);
       and g7(w11,a,b,c);

       or a2(f,w5,w6,w7,w10,w11);

endmodule
