package body sorting
with SPARK_Mode
is
   procedure Selection_Sort(A: in out Natural_Array) is
      Min  : Positive;
      Temp : Integer;
   begin
         for I in A'First..A'Length - 1 loop
            pragma Loop_Variant (Increases => I);
            if I /= 0 then
               Min := I;
               for J in I + 1..A'Length loop
                  pragma Loop_Variant (Increases => J);
                  if  A'Last >= Min and A'First <= Min then
                     if A (Min) > A (J) then
                        Min := J;
                     end if;
               end if;
            end loop;
            if  A'Last >= Min and A'First <= Min then
                  if Min /= I then
                     Temp    := A (I);
                     A (I)   := A (Min);
                     A (Min) := Temp;
                  end if;
               end if;
            end if;
         end loop;
   end Selection_Sort;
end sorting;
