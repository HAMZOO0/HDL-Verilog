// ----- or gate ------- 
module ornazr(a,b,c);

input a , b  ;
output c ; 

or o1 (c,a,b);

endmodule 

//// ------ TESTBENCH  
module techtbechorgate ();

reg a,b ; 

wire c ; 

ornazr o1(a,b,c);

initial 
begin 

$monitor ("Time = %2d , A = %b , B=%b , C = %b", $time , a ,b,c);

      a=1'b0 ; b = 1'b0 ;  

#10   a=1'b0 ; b = 1'b1 ; 

#10   a=1'b1; b = 1'b0 ;

#10   a=1'b1 ; b = 1'b1 ;  

	end 

endmodule
