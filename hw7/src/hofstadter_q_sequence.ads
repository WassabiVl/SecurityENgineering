with Ada.Real_Time;

package Hofstadter_Q_Sequence 
with SPARK_Mode 
is
   type Array_Type is array(Positive range <>) of Integer;
   
   protected type Q_Array(S : Integer) is       
      procedure Retrieve(Index : in out Positive; success : out Boolean); -- return on Index the value or Index, if the value was not recently calculated
      procedure Add(Index, Value : Positive);
      procedure Print;
   private
     Array_1  : Array_Type(1 .. S) := (others => 0);
   end Q_Array;
   
   --function to compute Hofstadter Q-Sequence
   function Q(N: Positive) return Positive;
   
     --define and create tasks **following example in lectures
     --and problem session slides
   procedure Mute_Workers(Q_Num: Integer; End_Time: Integer);
   
   --increases counter for workers and checks if N is reached 
   protected type One_Way_Counter(N: Positive) is 
      procedure Increment;
      function At_End return Boolean;
      private Current : Natural := 0;
      
   end One_Way_Counter;
   
   --functions/procedures that constitute checks to be carried out
   --before termination
   protected type End_Tasks is
       --sets task_complete value
      procedure Set_Complete;
      
      --triggered if computation is completed or q is pressed
      function At_End return Boolean;
      
      --Keeps track of time spent on computation of Q Sequence
      procedure Start_Timer;
      
      --this checks if stipulated timeout is reached
      function Time_Out(Finish: Integer) retuRn Boolean;
   private
      Task_Complete: Boolean := False;
      Start_Time: Ada.Real_Time.Time;
   end End_Tasks;
       
   
end Hofstadter_Q_Sequence;
