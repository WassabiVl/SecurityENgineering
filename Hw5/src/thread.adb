with Ada.Text_IO; use Ada.Text_IO;
package body Thread is
procedure Initialize is 
begin 
      S := Ready;
      Put_Line("state changed to Ready");
end Initialize;
   
   procedure Do_Action(A: Action) is 
   begin
      case A is
         when Notify => Put_Line(S'Image);
         when Resume => 
            if S = Waiting or S = Sleeping then
               S:= Running;
            else
               S:= None;
            end if;
         when Sleep => 
            if S /= Stopped or S /= Sleeping or S /= None then
               S := Sleeping;
            end if;
         when others => S := None;
      end case;
      
   end Do_Action;

end Thread;
