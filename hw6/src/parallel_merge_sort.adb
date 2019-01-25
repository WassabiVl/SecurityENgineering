with GNAT.Command_Line;   use GNAT.Command_Line;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Text_IO.Text_Streams;  use Ada.Text_IO.Text_Streams;
with Parallel_Sort; 
with GNAT.Strings;  use GNAT.Strings;
with Ada.Calendar; use Ada.Calendar;
with Ada.Calendar.Conversions; use Ada.Calendar.Conversions;

procedure parallel_merge_sort is
   
   Input, Output : File_Type;
   Buffer        : Character;
   I: natural := 0;
   time_end : Time;
   interval: Duration;
   time_start: Time;
   test: String :="";
   
   procedure Callback (Switch, Param, Section : String) is
         Config : Command_Line_Configuration;
         I_Option   : aliased String_Access;
         O_Option    : aliased String_Access;
         T_Option : aliased Integer := 0; 
   begin
         Define_Switch (Config, I_Option'Access, "-1",
                        Help => "input file");
         Define_Switch (Config, O_Option'Access, "-o",
                        Help => "output file");
         Define_Switch (Config, T_Option'Access,
                        Long_Switch => "--long=",
                        Help => "time");
         Getopt(Config => Config); 
      end Callback;
   package PS is new Parallel_Sort(Integer, "=" => "=", "<" => "<");
   arr : Ps.Array_Access_Type;  
   arr1: aliased PS.Array_Type := (0,0,0);
begin 
   time_start:= Clock;
   Open (File => Input,  Mode => In_File,  Name => Get_Argument(Do_Expansion => True, Parser=> Command_Line_Parser));
   Create (File => Output, Mode => Out_File, Name => Get_Argument(Do_Expansion => True, Parser=> Command_Line_Parser));
   interval:= Duration'Value(Get_Argument);
   time_end := time_start + interval;
   while not End_Of_File loop
      Buffer := Character'Input (Stream (Input));
      arr1(I) := Integer'Value(Buffer'Image);
      I := I +1;
   end loop;
   Close (Input);
   arr:= arr1'Access;
   Ps.Parallel_Merge_Sort(Input => arr, Result => arr);
   for J in 0..I loop
      test := arr1(J)'Image;
      for Z in  test'First.. test'Last loop
         Character'Write (Stream (Output), test(Z));
      end loop;
   end loop;
   Close (Output);
   Put_Line ("File argument was placed in " & Get_Argument);  -- 7
         
exception
   when End_Error =>
      if Is_Open(Input) then
         Close (Input);
      end if;
      if Is_Open(Output) then
         Close (Output);
      end if;
   
end parallel_merge_sort;
