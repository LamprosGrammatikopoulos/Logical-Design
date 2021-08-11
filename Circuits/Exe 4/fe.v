module fe(e,a,b,c,d);
  
	input a,b,c,d;
	output e;

	wire wire_not_b, wire_not_d, wire_1, wire_2;

	not gate_not_b(wire_not_b, b);
	not gate_not_d(wire_not_d, d);

	and gate_and_1(wire_1, wire_not_d, wire_not_b);
	and gate_and_2(wire_2, b, c, d);

	or gate_or_1(e, wire_1, wire_2);


endmodule

