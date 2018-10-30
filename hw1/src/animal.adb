--Submission by Adejoh Rosemary & Wael Al Atrash
--Ex. 3.3
--program which asks the user to pick an animal from a list that you display
--(cat, dog, elephant or giraffe)
--Finally, tell the user which animal you think was chosen

with Ada.Text_IO, Ada.Characters.Handling;
use Ada.Text_IO, Ada.Characters.Handling;
procedure Animal is

   --variables to store animal list and answers
   Choice : String := "Cat, Dog, Elephant, Giraffe";
   Prompt : Character;
   Answer_1 : Character;
   Answer_2 : Character;
begin
   --display list of animals
   Put_Line(Choice);
   Put_Line("Pick one animal. Don't tell me :)");
   Put_Line("Press p to proceed");
   --retrieve prompt
   Get(Prompt);
   --case to proceed or request the correct prompt
   case Prompt is
      --if the correct prompt is given, begin game
      when 'p' | 'P' =>
         Put_Line("Is it a household pet? Enter 'y' for yes and 'n' for no");
         --retrieve player's answer
         Get(Answer_1);
         --           loop
         -- if a hh pet, ask clues relating to hh pets, display final guess and exit
            if Answer_1 = 'y' or Answer_1 = 'Y' then
               Put_Line("Does it purr?");
               Get(Answer_2);
               if Answer_2 = 'y' or Answer_2 = 'Y' then
                  Put_Line("It's a cat!");
                  return;
               elsif Answer_2 = 'n' or Answer_2 = 'N' then
                  Put_Line("It's a dog!");
                  return;
               --if the player enters answer other than 'y' or 'n'
               else
                  Put_Line("Please enter 'y' for yes and 'n' for no");
               end if;
            -- if it is not a hh pet, ask clues relating to the remaining animals,
            --display final guess and exit
            elsif Answer_1 = 'n' or Answer_1 = 'N' then
               Put_Line("Does it have a long neck?");
               Get(Answer_2);
               if Answer_2 = 'y' or Answer_2 =  'Y' then
                  Put_Line("It's a giraffe");
                  return;
               elsif Answer_2 = 'n' or Answer_2 = 'N' then
                  Put_Line("It's an elephant!");
                  return;
               else

               --if the player enters answer other than 'y' or 'n'
                  Put_Line("Please enter 'y' for yes and 'n' for no");
               end if;
            else
               --if the player enters answer other than 'y' or 'n'
               Put_Line("Please enter 'y' for yes and 'n' for no");
            end if;
         --           end loop;
   -- restart game if player enters any prompt other than 'p'
      when others =>
         Animal;
--           Put_Line("Please press p to continue");
   end case;
end Animal;
