module FA(s,c,i,j,k);
  
	input i,j,k;
	output s,c;

	wire w1,w2,w3;

	HA g1(w1,w2,i,j); 
	HA g2(s,w3,w1,k);
	or g3(c,w3,w2); 

endmodule

