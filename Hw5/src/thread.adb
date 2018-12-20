with Ada.Text_IO; use Ada.Text_IO;
package body Thread 
   with SPARK_Mode
   is
      
procedure Initialize is 
begin 
      S := Ready;
     -- Put_Line("state changed to Ready");
end Initialize;
   
   procedure Do_Action(A: Action) is 
   begin
      if S /= None then 
      case A is
         --when Notify => Put_Line(S'Image);
         when Resume => 
            if S /= Running then
               S:= Running;
            else
               S:= None;
            end if;
         when Sleep => 
            if S /= Stopped then
               S := Sleeping;
            else
              S:= None;
            end if;
         when Start =>
            if S /= Running then
               S:= Running;
            else
               S := None;
            end if;
         When Stop =>
            if S /= Stopped then
              S := Stopped;
         else
            S := None;
              end if;
         when others => S := None;
      end case;
   else
      S := None;
   end if;
   end Do_Action;

end Thread;
