package Hofstadter_Q_Sequence 
with SPARK_Mode 
is
   type Callback is access procedure(N: Positive);
   type Array_Type is array(Natural range <>) of Positive;
   type Array_Access_Type is access all Array_Type;
   
   function Q(N: Positive) return Positive;
   procedure Q1(First, Last: Positive; Seq_Callback: Callback);
--     procedure Decrease_Count(P: Positive);
--     protected type Q_Array(K : Integer) is       
--        procedure Get_Value(Index : in out Positive; success : out Boolean); -- return on Index the value or Index, if the value was not recently calculated
--        procedure Put_Value(Index, Value : Positive);
--        procedure Print;
--     private
--        List : List_Type(1 .. K) := (others => 0);
--     end Q_Array;

end Hofstadter_Q_Sequence;
