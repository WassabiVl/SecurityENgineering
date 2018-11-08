with mini_project_1; use mini_project_1;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
WITH Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body mini_project_1 is

   function "+"(Left : Vector ; Right : Vector ) return Vector is
      temp : Vector;
   begin
      temp.X := Left.X + Right.X;
        temp.Y := Left.Y + Right.Y;
      temp.Z := Left.Z + Right.Y;
      return temp;
   end "+";

   function "-"(Left : Vector ; Right : Vector ) return Vector is
      temp : Vector;
   begin
      temp.X := Left.X - Right.X;
        temp.Y := Left.Y - Right.Y;
      temp.Z := Left.Z - Right.Y;
      return temp;
   end "-";

   function Cross_Product(Left : Vector ; Right : Vector ) return Vector is
      temp : Vector;
   begin
      temp.X := (left.Y * Right.Z) - (Left.Z * Right.Y);
      temp.Y := (Left.Z * Right.X) - (Left.X * Right.Z);
      temp.Z := (Left.X * Right.Y) - (Left.Y * Right.X);
      return temp;
   end Cross_Product;

   function "*"(Left : Vector ; Right : Vector ) return Float is
   begin
      return Left.X*Right.X + Left.Y*Right.Y + Left.Z*Right.Z;
   end "*";

   function "*"(Left : Vector ; Right : Float ) return Vector is
      temp: Vector;
   begin
      temp.X :=  Left.X * Right;
      temp.Y := Left.Y * Right;
      temp.Z :=  Left.Z * Right;
      return temp;
   end "*";

   function "="(Left : Vector ; Right : Vector ) return Boolean is
   begin
      return Left.X = Right.X and Left.Y = Right.Y and Left.Z = Right.Z;
   end "=";

   function Are_Orthogonal(Left: Vector ; Right : Vector ) return Boolean is
      a: float;
   begin
      a := "*"(Left => Left,Right=> Right);
      return a = 0.0;
      end Are_Orthogonal;

   function Distance (Left: Vector ; Right : Vector ) return Float is
   begin
      return Sqrt((Left.X - Right.X)**2
                  + (Left.Y - Right.Y)**2
                  + (Left.Z - Right.Z)**2);
   end Distance;

   function Distance_To_Origin ( Item: Vector ) return Float is
      a : Vector;
      Dist_To_O : Float;
   begin
      Dist_To_O := Sqrt(a.X**2 + a.Y**2 + a.Z**2);
      return Dist_To_O;

      --return Distance(Left => Item, Right => a);
   end Distance_To_Origin;

   procedure Put ( Item: Vector ) is
      a : Vector;
   begin
      Put(a.X);
      Put(" ,");
      Put(a.Y);
      Put(" ,");
      Put(a.Z);

   end Put;

 end mini_project_1;
