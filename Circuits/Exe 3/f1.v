module f1(x1,b0,b1,b2,b3);
  
	input b0,b1,b2,b3;
	output x1;

	wire wire_not_1, wire_not_2, wire_3, wire_4;

	and gate_and_1(wire_3, b2, wire_not_1);
	not gate_not_1(wire_not_1, b1);
	or gate_or(x1, wire_3, wire_4);
	not gate_not_2(wire_not_2, b2);
	and gate_and_2(wire_4, b1, wire_not_2);

endmodule

