module test();

	reg first_in, second_in, third_in, fourth_in;
	wire x3,x2,x1,x0;

	f3 circuit(x3, first_in, second_in, third_in, fourth_in);
	f2 circuit(x0, first_in, second_in, third_in, fourth_in);
	f1 circuit(x1, first_in, second_in, third_in, fourth_in);
	f0 circuit(x2, first_in, second_in, third_in, fourth_in);



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

