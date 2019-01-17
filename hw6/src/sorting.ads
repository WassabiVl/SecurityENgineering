package Sorting
  with SPARK_Mode
is
   type Natural_Array is array(Natural range <>) of Natural;

   procedure Selection_Sort(A: in out Natural_Array) with
     Pre => ( A'First >= 0 and A'Last < Integer'Last and  A'Length > 1 and A'First /= A'Last ),
     Post => (A'Old'Length = A'Length and A'First <= A'Last )
              ;

   function Sorted(A : Natural_Array) return Boolean is
      (for all I in A'Range =>
         (for all J in I .. A'Last => A (I) <= A (J)));
end Sorting;
