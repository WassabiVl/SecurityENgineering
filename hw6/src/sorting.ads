package Sorting
with SPARK_Mode
is
   type Natural_Array is array(Natural range <>) of Natural;

   procedure Selection_Sort(A: in out Natural_Array) with
     Pre => (A'Length > 1),
     Post => A'Old'Length = A'Length and A'First <= A'Last and
     (for all I in A'Range =>
        (for all J in A'Range =>
             (if I < J then A (I) < A (J))));
end Sorting;
