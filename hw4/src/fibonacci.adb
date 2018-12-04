-- precondition N >0
function Fibonacci  (N : Natural ) return Natural is 
   A : Natural := 0; 
   B : Natural := 1;
   Sum : Natural ;
   X: Natural:= N;
begin
   pragma Loop_Invariant (Sum = A);
   pragma Loop_Variant (Increases => A, Decreases => X);
   for I in 1.. N loop 
      Sum := A + B; 
      B := A;
      A := Sum;
      X := N - I;
   end loop;
 return A;
   
end Fibonacci;
-- Post condition Fibonacci'Result = A(n-1) + A(n-2)
-- proof loop terminates when X = 1 or when I = N as no other vairable effect's on N
