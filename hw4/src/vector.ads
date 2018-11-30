
package Vector is
   pragma SPARK_Mode;

   pragma Assertion_Policy(Check);

   type Vector is record
      X: Float := 0.0;
      Y: Float := 0.0;
      Z: Float := 0.0;
   end record ;
   function "+"(Left : Vector ; Right : Vector ) return Vector
     with Pre => Left.X + Right.X < Float'Last and Left.Y + Right.Y < Float'Last and Left.Z + Right.Z < Float'Last,
       Post => "+"'Result.X = Left.X + Right.X and "+"'Result.Y = Left.Y + Right.Y and "+"'Result.Z = Left.Z + Right.Z;
   -- Adds two vectors dimension - wise.
   function "-"(Left : Vector ; Right : Vector ) return Vector ;
   -- Subtracts the right vector from the left one dimension -wise .
   function "*"(Left : Vector ; Right : Float ) return Vector ;
   -- Multiplies all dimensions of Left by Right .
   function "*"(Left : Vector ; Right : Vector ) return Float ;
   -- Computes the scalar product .
   function "="(Left : Vector ; Right : Vector ) return Boolean ;
   -- Returns True if all dimensions of Left are equal to that of Right ;
   -- Returns False otherwise .
   function Are_Orthogonal(Left: Vector ; Right : Vector ) return Boolean ;
   -- Determines if both vectors stand orthogonal to each other or not .
   function Cross_Product( Left: Vector ; Right : Vector ) return Vector ;
   -- Computes the cross product .
   function Distance (Left: Vector ; Right : Vector ) return Float ;
   -- Computes the distance between both vectors .
   function Distance_To_Origin ( Item: Vector ) return Float ;
   -- Computes the distance to the origin of the coordinate system .


end Vector;
