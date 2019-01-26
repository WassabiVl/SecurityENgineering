package body Hofstadter_Q_Sequence
with SPARK_Mode 
is
   function Q1(N: Positive) return Positive is 
   begin
         if Q_Store(N) = 0 then
            Q_Store(N) := Q(N - Q(N-1)) + Q(N-Q(N-2));
         end if;
         return Q_Store(N);
   end Q1;
   
   procedure Decrease_Count(P: Positive) is
   begin
      if P < Previous_Value then
         Decrease_Counter := Decrease_Counter + 1;
      end if;
      Previous_Value := P;
   end Decrease_Count;
   
   procedure Q(First, Last: Positive; Q_Proc: Callback)
   is
      Q_Store: array(First .. Last) of Natural := (1 => 1, 2 => 1, others => 0);
      task type Task_Q is entry Start(First, Last: Positive; 
                                      Q_Proc: Callback);
         task body Task_Q is 
         begin
           accept Start (First, Last: Positive;  Q_Proc: Callback) is
               for I in First .. Last loop
                  Q_Proc(Q1(I)); 
               end loop; 
            end Start;
            
         end Task_Q;
         task1, task2,task3,task4: Task_Q;
         Denom1 : Positive := Positive(Float'Rounding(Last/4-.5));
         Denom2 : Positive := Positive(Float'Rounding(Last/2-.5));
         Denom3 : Positive := Positive(Float'Rounding(3*Last/4-.5));
      begin
         task1.Start(First  => First,
                     Last   => Denom1,
                     Q_Proc => Q_Proc);
         
            task2.Start(First => Denom1+1,
                        Last => Denom2,
                        Q_Proc => Q_Proc);
      
            

   

end Hofstadter_Q_Sequence;
