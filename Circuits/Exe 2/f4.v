module f4(the_output,A,B,C,D);
  
	input A, B, C, D;
	output the_output;

	wire wire_not_1;
	
	not gate_not_2(wire_not_1, A);
       and gate_and(the_output, wire_not_1, C);


endmodule

