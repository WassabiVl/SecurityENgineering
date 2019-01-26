package body Hofstadter_Q_Sequence
with SPARK_Mode 
is
   function Q(N: Positive) return Positive is 
   begin
         if Q_Array(N) = 0 then
            Q_Array(N) := Q(N - Q(N-1)) + Q(N-Q(N-2));
         end if;
         return Q_Array(N);
   end Q;
   
--     procedure Decrease_Count(P: Positive) is
--     begin
--        if P < Previous_Value then
--           Decrease_Counter := Decrease_Counter + 1;
--        end if;
--        Previous_Value := P;
--     end Decrease_Count;
   
   procedure Q1(First, Last: Positive; Seq_Callback: Callback)
   is      
      Q_Array: array(First .. Last) of Natural := (1 => 1, 2 => 1, others => 0);
      
      task type Task_Q is entry Start(First, Last: Positive; 
                                      Seq_Callback: Callback);
      end Task_Q;
      
      task body Task_Q is 
      begin
         accept Start (First, Last: Positive;  Seq_Callback: Callback) do
            for I in First .. Last loop
               Seq_Callback(Q(I)); 
            end loop; 
         end Start;
      end Task_Q;
      
      task1, task2,task3,task4: Task_Q;
      Denom1 : Positive := Positive(Float'Rounding((Last/4) - Float(0.5)));
      Denom2 : Positive := Positive(Float'Rounding((Last/2) - Float(0.5)));
      Denom3 : Positive := Positive(Float'Rounding((3*Last/4) - Float(0.5)));
   begin
      task1.Start(First  => First,
                  Last   => Denom1,
                  Seq_Callback => Seq_Callback);
      
      task2.Start(First => Denom1+1,
                  Last => Denom2,
                  Seq_Callback => Seq_Callback);
      task3.Start(First => Denom2+1,
                  Last => Denom3,
                  Seq_Callback => Seq_Callback);
         task4.Start(First => Denom3+1,
                     Last => Last,
                     Seq_Callback => Seq_Callback);
   end Q1;
      

end Hofstadter_Q_Sequence;
