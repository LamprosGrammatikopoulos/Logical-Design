module HA(s,c,a,b);
  
	input a,b;
	output s,c;

	xor gs(s,a,b);
	and gc(c,a,b);

endmodule
