--Submission by Adejoh Rosemary & Wael Al Atrash

--Ex. 3.2
-- Modify the calculator program so that after evaluating an expression
--it asks the user if he or she wants to evaluate another expression.

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Calculator_Updated is
   --variables for numbers, operands and operators
   Result : Integer;
   Operator : Character;
   Operand : Integer;
   Answer: Character;
begin
   --propmt for expression to perform calculation
   Put ("Enter an expression: ");
   --retrieve expression
   Get(Result);
   loop
      --retrieve each element of the expression
      loop
         Get(Operator);
         --ignore spaces
         exit when Operator /= ' ';
      end loop;
      --check if end of expression and begin calculation
      if Operator = '.' then
         --display result
         Put(Result, Width => 1);
         New_Line;
         --ask if user would like to make another computation
         Put ("Would you like to enter another expression?");
         --get answer
         Get(Answer);
         case Answer is
            --if yes, restart program
            when 'Y' | 'y' =>
               Calculator_Updated;
               --if no, exit
            when 'N' | 'n' =>
               Put ("Goodbye");
               --case for other answers other than y or n
            when others =>
               Put("please input y or n");
               exit;
         end case;
      else
         --define and perform calculations based on the operand provided
         Get(Operand);
         case Operator is
            when '+' =>
               Result:= Result + Operand;
            when '-' =>
               Result := Result - Operand;
            when '*' =>
               Result := Result * Operand;
            when '/' =>
               Result := Result / Operand;
               --case for when a different operand is provided other than those defined
            when others =>
               Put("Invalid operator '");
               Put(Operator);
               Put ("'");
               exit;
         end case;
      end if;
   end loop;
   New_Line;
end Calculator_Updated;
