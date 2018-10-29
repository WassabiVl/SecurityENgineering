--Submission by Adejoh Rosemary & Wael Al Atrash

--Ex. 3.4
--Write a program to count the number of vowels (A, E, I, O or U) in its input.

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Vowel_Finder is
   --variables to hold string and vowel counters
   Input : Unbounded_String;
   Alpha : Character;
   A_Counter : Integer := 0;
   E_Counter : Integer := 0;
   I_Counter : Integer := 0;
   O_Counter : Integer := 0;
   U_Counter : Integer := 0;
   Total_Counter : Integer := 0;
begin
   --prompt for string input
   Put("Type string: ");
   --retrieve input
   Input := To_Unbounded_String(Get_Line);
   --loop through input, find vowels and increase the respective counters of found vowels
   for I in 1 .. Length(Input) loop
      Alpha := Element(Input, I);
      if Alpha = 'a' or Alpha = 'A' then
         A_Counter := A_Counter + 1;
      elsif Alpha = 'e' or Alpha = 'E' then
         E_Counter := E_Counter + 1;
      elsif Alpha = 'i' or Alpha = 'I' then
         I_Counter := I_Counter + 1;
      elsif Alpha = 'o' or Alpha = 'O' then
         O_Counter := O_Counter + 1;
      elsif Alpha = 'u' or Alpha = 'U' then
         U_Counter := U_Counter + 1;
      end if;
   end loop;
   --compute total number of vowels found
   Total_Counter := A_Counter + E_Counter + I_Counter + O_Counter + U_Counter;

   --diaplay the results
   Put("The number of A vowels is: ");
   Put(A_Counter, Width => 1);
   New_Line;
   Put("The number of E vowels is: ");
   Put(E_Counter, Width => 1);
   New_Line;
   Put("The number of I vowels is: ");
   Put(I_Counter, Width => 1);
   New_Line;
   Put("The number of O vowels is: ");
   Put(O_Counter, Width => 1);
   New_Line;
   Put("The number of U vowels is: ");
   Put(U_Counter, Width => 1);
   New_Line;
   Put("The total number of vowels is: ");
   Put(Total_Counter, Width => 1);
--        Put ("Would you like to enter another string?");
--        Get(Answer);
--        if Answer = 'Y' or Answer = 'y' then
--           Vowel;
--        elsif
--          Answer = 'N' or Answer = 'n' then
--           Put("Goodbye");
--        else
--           Put("please input y or n");
--           New_Line;
--        end if;
--     end loop;
   end Vowel_Finder;
