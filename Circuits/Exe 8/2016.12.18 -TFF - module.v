module TFF(A, toggle, reset, clock); 

   output A;
   input toggle;
   input clock;
   input reset;
   reg A;

   always @ (negedge clock or posedge reset)	
      if (reset) A = 0;
      else if (toggle) A = ~ A;

endmodule
