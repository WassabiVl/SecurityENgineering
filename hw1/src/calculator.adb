--Submission by Adejoh Rosemary & Wael Al Atrash

--Ex 2.3
--Program to display the sum, difference, product and quotient of two numbers

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Calculator is
   --variables to hold both numbers
   First, Second : Integer;
begin
   --prompt to input numbers
   Put ("Enter two integers: ");
   --retrieve the numbers
   Get(First);
   Get(Second);
   --perform and display sum result
   Put ("The sum is:");
   Put (First + Second);
   New_Line;
   --perform and display product result
   Put ("The product is:");
   Put (First * Second);
   New_Line;
   --check both numbers and always subtract the smaller from the larger number
     --and divide the larger by the smaller number
   if First > Second then
      Put ("The difference is:");
      Put (First - Second);
      New_Line;
      Put ("The quotient is:");
      Put (First / Second);
      New_Line;
   else
      Put ("The difference is:");
      Put (Second - First);
      New_Line;
      Put ("The quotient is:");
      Put (Second / First);
   end if;
   New_Line;
end Calculator;
