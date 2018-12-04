with Binary_Trees; use Binary_Trees;
with Ada.Text_IO; use Ada.Text_IO;
package body Binary_Trees is

   function "<"(Left, Right: Item_Type) return Boolean is
   begin
      if Left < Right then
         return True;
      else
         return False;
      end if;
   end "<";

   function "="(Left, Right: Item_Type) return Boolean is
   begin
      if Left == Right then
         return True;
      else
         return False;
      end if;
   end "=";

   function ">"(Left, Right: Item_Type) return Boolean is
   begin
      if LEft > Right then
         return True;
      else
         return False;
      end if;
   end ">";

   procedure Put_Item(Item: Item_Type) is
   begin





begin

end Binary_Trees;
