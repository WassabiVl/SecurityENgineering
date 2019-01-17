with Sorting; use Sorting;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main

is
test_array : Natural_Array := (1,  2,  3,  4,  6,  7,  8,  9);
      A : Natural_Array := (4, 9, 3,  2, 7,  1, 6, 8);
begin
   Put_line(A(0)'Image);
   Sorting.Selection_Sort(A => A);
   Put_line(A(0)'Image);


   null;
end Main;
