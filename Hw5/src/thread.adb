with Ada.Text_IO; use Ada.Text_IO;
package body Thread is
procedure Initialize is 
begin 
      S := Ready;
      Put_Line('state  changed to Ready');
end Initialize;
   

end Thread;
