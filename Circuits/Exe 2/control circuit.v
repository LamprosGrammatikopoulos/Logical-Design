module test();

	reg first_in, second_in, third_in, fourth_in;
	wire out;

	my_first_circuit circuit(out, first_in, second_in, third_in, fourth_in);

	initial begin 
		
              first_in=0; second_in=0; third_in=0; fourth_in=0; #10
		first_in=0; second_in=0; third_in=0; fourth_in=1; #10
		first_in=0; second_in=0; third_in=1; fourth_in=0; #10
		first_in=0; second_in=0; third_in=1; fourth_in=1; #10
              first_in=0; second_in=1; third_in=0; fourth_in=0; #10
		first_in=0; second_in=1; third_in=0; fourth_in=1; #10
		first_in=0; second_in=1; third_in=1; fourth_in=0; #10
		first_in=0; second_in=1; third_in=1; fourth_in=1; #10
              first_in=1; second_in=0; third_in=0; fourth_in=0; #10
		first_in=1; second_in=0; third_in=0; fourth_in=1; #10
		first_in=1; second_in=0; third_in=1; fourth_in=0; #10
		first_in=1; second_in=0; third_in=1; fourth_in=1; #10
              first_in=1; second_in=1; third_in=0; fourth_in=0; #10
		first_in=1; second_in=1; third_in=0; fourth_in=1; #10
		first_in=1; second_in=1; third_in=1; fourth_in=0; #10
		first_in=1; second_in=1; third_in=1; fourth_in=1; #10
		$finish;
	end

endmodule





