module f2(x0,b0,b1,b2,b3);
  
	input b0,b1,b2,b3;
	output x0;

	wire wire_not_1, wire_not_2, wire_3, wire_4;

	and gate_and_1(wire_3, b2, wire_not_2);
	not gate_not_1(wire_not_1, b2);
	or gate_or(x0, wire_3, wire_4);
	not gate_not_2(wire_not_2, b3);
	and gate_and_2(wire_4, b3, wire_not_1);

endmodule

