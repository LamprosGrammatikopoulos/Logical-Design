module fm(m,a,b,c,d);
  
	input a,b,c,d;
	output m;

	wire wire_not_b, wire_not_c, wire_not_d, wire_1, wire_2, wire_3;

	not gate_not_c(wire_not_b, b);
	not gate_not_d(wire_not_d, d);

	or gate_or_1(wire_1, d, wire_not_b);
	or gate_or_1(wire_2, b, wire_not_d);
	or gate_or_1(wire_3, c, wire_not_d);


	and gate_and_1(m, wire_1, wire_2, wire_3);

endmodule

