package Sorting
with SPARK_Mode
is
   type Natural_Array is array(Natural range <>) of Natural;

   procedure Selection_Sort(A: in out Natural_Array) with
     Pre => ( A'First >= 0 and A'Last < Integer'Last and  A'Length > 1 and A'First /= A'Last ),
     Post => (A'Old'Length = A'Length and A'First <= A'Last and Sorted(A));

   function Sorted(A : Natural_Array) return Boolean is
      (for all I in A'First..A'Last-1 => A (I) <= A (I+1));
end Sorting;
