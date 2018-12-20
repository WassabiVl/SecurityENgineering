with ticket_machine, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO;
use ticket_machine, Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   x : State;
   y : ticket_machine.Reaction;
begin
   ticket_machine.Initialize(S => x);
   ticket_machine.Do_Action(S => x,A => Insert_Twenty_Eur,R => y);
   Ada.Integer_Text_IO.Put(x);
   ticket_machine.Do_Action(S => x,A => Insert_Five_Eur,R => y);
   Ada.Integer_Text_IO.Put(x);
end Main;
