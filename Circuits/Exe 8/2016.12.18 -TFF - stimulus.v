module test;

   wire [7:0]A;
   reg toggle;
   reg reset;
   reg clock;

   binaryripplecounter circuit(A[7:0], toggle, reset, clock); 

   always begin
      #9 clock = ~clock;
      #1 clock = ~clock;
   end 

   initial begin
      clock = 0; toggle = 0; reset=0; #1 reset=1; #1 reset=0;
      #160 toggle = 1;
      #160 toggle = 0;
      #160 $finish;
   end

endmodule

