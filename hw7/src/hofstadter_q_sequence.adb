with Hofstadter_Q_Sequence, Ada.Text_IO, Ada.Real_Time;
with Armageddon;

package body Hofstadter_Q_Sequence is
   
   Beginn: End_Tasks;
   
   function Q(N: Positive) return Positive is 
   begin
      if N < 3 then
         return 1;
      else
         return Q(N - Q(N-1)) + Q(N-Q(N-2));
      end if;
   end Q;
   
   protected body Q_Array is
      -- return on Index the value or Index, if the value was not recently calculated
      procedure Retrieve (Index : in out Positive; success : out Boolean) is
         Prev_Index: Positive := Index;
      begin
         if Array_1(Index) > 0 then
            success := true;
            Index := Array_1(Prev_Index);
         else
            success := False;
         end if;
      end Retrieve;
      
      procedure Add(Index, Value : Positive) is
      begin
         Array_1(Index) := Value;
      end Add;
      
      procedure Print is
      begin
         Ada.Text_IO.Put_Line("Output is ");
         for I in Array_1'Range loop
            if Array_1(I) > 0 then
               Ada.Text_IO.Put_Line(I'Img & Array_1(I)'Img);
            end if;
         end loop;
      end Print;
   end Q_Array;
   
   
      --increases counter for workers and checks if N is reached
   protected body One_Way_Counter is
      procedure Increment is
         --checks if N is reached
      begin
         if Current < N then
            Current := Current + 1;
         end if;
      end Increment;
      
      function At_End return Boolean is
      begin
         return (Current = N);
      end At_End;
      
   end One_Way_Counter;
   
   protected body End_Tasks is
      procedure Set_Complete is
         --sets task_complete value
      begin
         Task_Complete := True;
      end Set_Complete;
      
      function At_End return Boolean is
         --triggered if computation is completed or q is pressed
      begin
         return Task_Complete;
      end At_End;
      
      procedure Start_Timer is
      begin
         Start_Time := Ada.Real_Time.Clock;
      end Start_Timer;
      
      function Time_Out(Finish: Integer) return Boolean is
         
         Current_Time: Ada.Real_Time.Time := Ada.Real_Time.Clock;
         Time_Diff: Ada.Real_Time.Time_Span;
      begin
         Time_Diff := Ada.Real_Time."-"(Current_Time, Start_Time);
         return (Ada.Real_Time.">"(Time_Diff, Ada.Real_Time.Milliseconds(1000 * Finish)));
         
      end Time_Out;
      
      end End_Tasks;
      
   procedure Mute_Workers(Q_Num: Integer; End_Time: Integer) is 
      --define and create tasks **following example in lectures
      --and problem session slides
      Array_Result: Q_Array(Q_Num);
      One_Counter: One_way_Counter(4);
      task type Worker is 
         entry Start(Name: Character; Start, Offset: Positive; Q_Num: Integer;
                     End_Time: Integer);
      end Worker;
      
      task body Worker is
         Task_Name: Character := '?';
         Val, Diff: Positive;
         Finish, Max_Val : Integer;
         Available: Boolean;
         Stop_Prog: Character;
         Q_Value: Positive;
         Evaluate: Boolean;
      begin
         accept Start (Name: Character; Start, Offset: Positive; Q_Num: Integer;
                       End_Time: Integer) do
            Task_Name:= Name;
            Val := Start;
            Diff := Offset;
            Max_Val := Q_Num;
            Finish := End_Time;
            
         end Start;
         while Val <= Max_Val loop
            if Beginn.Time_Out(Finish) then
               Beginn.Set_Complete;
            end if;
            Ada.Text_IO.Get_Immediate (Stop_Prog, Available);
            if (Available and Stop_Prog = 'q') or Beginn.At_End then
               Beginn.Set_Complete;
               exit;
            end if;
            Q_Value := Val;
            Array_Result.Retrieve(Q_Value, Evaluate);
            if not Evaluate then
               Q_Value := Q(Val);
               if not Beginn.At_End then
                  Array_Result.Add(Val, Q_Value);
               end if;
            end if;
            Ada.Text_IO.Put_Line(Task_Name & " " & Val'Img & Q_Value'Img);
            Val := Val + Diff;
         end loop;
         One_Counter.Increment;              
         
      end Worker;
      --        
   begin
      declare
         Task_1, Task_2, Task_3, Task_4: Worker;
      begin
         Beginn.Start_Timer;
         Task_1.Start('A', 1, 4, Q_Num, End_Time);
         Task_2.Start('B', 2, 4, Q_Num, End_Time);
         Task_3.Start('C', 3, 4, Q_Num, End_Time);
         Task_4.Start('D', 4, 4, Q_Num, End_Time);
      end;
      
      Array_Result.Print;
      --
   end Mute_Workers;
   
end Hofstadter_Q_Sequence;
