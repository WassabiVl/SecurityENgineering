with Ada.Text_IO; use Ada.Text_IO;
package body sorting
with SPARK_Mode
is
   procedure Selection_Sort(A: in out Natural_Array) is
      Min  : Natural;
      Temp : Natural;
   begin
      for I in A'First..A'Last-1 loop
         pragma Loop_Variant (Increases => I);
         Min := I;
         for J in 1 + I..A'Last  loop
            pragma Loop_Variant (Increases => J);
            pragma Loop_Invariant (A'First <= Min);
            pragma Loop_Invariant (J <= A'Last);
            if (J /= I and Min <= A'Last and Min >= A'First) then
               if A(Min) > A(J) then
                  Min := J;
               end if;
            end if;
         end loop;
         if Min /= I and Min <= A'Last and Min >= A'First then
            Temp    := A (I);
            A (I)   := A (Min);
            A (Min) := Temp;
         end if;
      end loop;
   end Selection_Sort;
end sorting;
