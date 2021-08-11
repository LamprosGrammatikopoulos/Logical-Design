module f2(the_output,A,B,C,D);
  
	input A, B, C, D;
	output the_output;

	wire wire_not_1, wire_not_2, wire_3, wire_4, wire_5;

	and gate_and_1(wire_3, A, B);
	not gate_not_1(wire_not_1, A);
	or gate_or(wire_5, wire_3, wire_4);
	not gate_not_2(wire_not_2, B);
	and gate_and_2(wire_4,  wire_not_1, wire_not_2);
       not gate_not_3(the_output, wire_5);

endmodule

