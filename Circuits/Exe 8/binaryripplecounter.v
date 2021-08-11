module binaryripplecounter(A[7:0], toggle, reset, clock); 

   output [7:0]A;
   input toggle;
   input clock;
   input reset;

   TFF TFF0(A[0],toggle,reset,clock);
   TFF TFF1(A[1],toggle,reset,A[0]);
   TFF TFF2(A[2],toggle,reset,A[1]);
   TFF TFF3(A[3],toggle,reset,A[2]);
   TFF TFF4(A[4],toggle,reset,A[3]);
   TFF TFF5(A[5],toggle,reset,A[4]);
   TFF TFF6(A[6],toggle,reset,A[5]);
   TFF TFF7(A[7],toggle,reset,A[6]);

endmodule

