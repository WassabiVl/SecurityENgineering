with Hofstadter_Q_Sequence;
with Ada.Text_IO, Ada.Integer_Text_IO; use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Command_Line; use Ada.Command_Line;

procedure Main is
   Input_Number: Integer;
   Input_TimeOut: Integer;

begin
   Put_Line("Number? ");
   Get(Input_Number);
   Put_Line("Timeout? ");
   Get(Input_TimeOut);

   Hofstadter_Q_Sequence.Mute_Workers(Input_Number, Input_TimeOut);
end Main;
