with ticket_machine_wael, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO;
use ticket_machine_wael, Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   x : State;
   y : ticket_machine_wael.Reaction;
begin
   ticket_machine_wael.Initialize(S => x);
   ticket_machine_wael.Do_Action(S => x,A => Insert_Twenty_Eur,R => y);
   Ada.Integer_Text_IO.Put(x);
   ticket_machine_wael.Do_Action(S => x,A => Insert_Five_Eur,R => y);
   Ada.Integer_Text_IO.Put(x);
end Main;
