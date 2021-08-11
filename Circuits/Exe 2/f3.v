module f3(the_output,A,B,C,D);
  
	input A, B, C, D;
	output the_output;

	wire wire_not_1, wire_2;
	
	or gate_or(wire_2, A, wire_not_1);
	not gate_not_2(wire_not_1, C);
       not gate_not_3(the_output, wire_2);

endmodule

