with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

   function Fibonacci (N : Natural) return Natural is
      A : Natural := 0;
      B : Natural := 1;
      Sum : Natural;
   begin
      for I in 1..N loop
         Sum := A + B;
         B := A;
         A := Sum;
      end loop;
      return A;
   end Fibonacci;
