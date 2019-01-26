package Hofstadter_Q_Sequence 
with SPARK_Mode 
is
   type Callback is access procedure(N: Positive);
   function Q1(N: Positive) return Positive;
   procedure Q(First, Last: Positive; Q_Proc: Callback);
   procedure Decrease_Count(P: Positive);

end Hofstadter_Q_Sequence;
