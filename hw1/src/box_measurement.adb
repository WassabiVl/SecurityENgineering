--Submission by Adejoh Rosemary & Wael Al Atrash

--Ex. 2.4
-- program which reads in three integers representing the length, width and height
--of a box in centimetres and displays the volume and the surface area of the box.

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO,Ada.Integer_Text_IO;

procedure Box_Measurement is
   --define variables for the individual measurements an constant value
   Height, Width, Length : Float;
   K : Integer := 2;
   S_A : Float;
begin
   --Prompt for dimensions
   Put ("Enter three numbers representing the height, width and lenght respectively: ");
   --retrieve measurements
   Get(Height);
   Get(Width);
   Get(Length);
   --Put(Width);
   --calculate and display volume
   Put ("The volume is:");
   Put (Height * Width * Length);
   --go to new line
   New_Line;
   --calculate surface area
   S_A := ((Height * Width) * Float(K)) + ((Height * Length) * Float(K)) + ((Width * Length) * Float(K));
   --round up and display surface area
   Put("The surface area is:");
   Put(Float'Rounding (S_A));
end Box_Measurement;
