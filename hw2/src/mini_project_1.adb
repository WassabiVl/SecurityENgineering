with mini_project_1; use mini_project_1;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
 with Ada.Numerics.Generic_Elementary_Functions use  Ada.Numerics.Generic_Elementary_Functions;
package body mini_project_1 is

   function "+"(Left : Vector ; Right : Vector ) return Vector is
      temp : Vector;
   begin
      temp.X = Left.X + Right.X
        temp.Y = Left.Y + Right.Y;
      temp.Z = Left.Z + Right.Y;
      return temp;
   end "+";

   function "-"(Left : Vector ; Right : Vector ) return Vector is
      temp : Vector;
   begin
      temp.X = Left.X - Right.X
        temp.Y = Left.Y - Right.Y;
      temp.Z = Left.Z - Right.Y;
      return temp;
   end "-";

   function Cross_Product(Left : Vector ; Right : Float ) return Vector is
      temp : Vector;
   begin
      temp.X = (left.Y*Right.Z) - (Left.Z*Right.Y);
      temp.Y = (Left.Z*Right.X) - (Left.X*Right*Z);
      temp.Z = (Left.X*Right.Y) - (Left.Y*Right.X);
      return temp;
   end"*";

   function "*"(Left : Vector ; Right : Vector ) return Float is
   begin
      return Left.X*Right.X + Left.Y*Right.Y + Left.Z*Right.Z;
   end "*"

   function "*"(Left : Vector ; Right : Vector ) return Vector is
      temp: Vector;
   begin
      temp.X =  Left.X*Right.X;
      temp.Y = Left.Y*Right.Y;
      temp.Z =  Left.Z*Right.Z;
      return temp;
   end "*"



 end mini_project_1;
