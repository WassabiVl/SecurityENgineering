package Elections with SPARK_Mode is
   type Party is (None, A, B, C, D);
   type Votes_Array is array(Party) of Natural;
   
   Empty_Array : Exception;

   Zero_Votes_Distribution: constant Votes_Array := (others => 0);
   Votes_Distribution: Votes_Array := Zero_Votes_Distribution;
   Num_Votes_Made: Natural := 0;
   Num_Total_Voters: Natural := 0;
  
   procedure Initialize(Num_Voters: Natural) with
     Global => (Output => (Num_Total_Voters, Num_Votes_Made)),
     --Depends => ( Num_Total_Voters =>  (Num_Votes_Made,Num_Voters),
     Pre => (Num_Voters <= Natural'Last),
     Post => (Num_Total_Voters = Num_Voters) and (Num_Votes_Made = 0) ;
   
     
    -- Resets the number of made votes and votes for all parties to 0, and 
    -- sets the number of total Voters to the given.
    
   procedure Vote_For(Vote: Party) with 
     Global => (In_out => (Num_Total_Voters, Num_Votes_Made, Votes_Distribution)),
     --Depends => (Num_Votes_Made =>+ Vote),
     Pre => (Num_Total_Voters >= 0) and  (Num_Votes_Made >= 0) and Num_Total_Voters < Integer'Last and Num_Total_Voters< Integer'Last,
     Post => (Num_Votes_Made = Num_Votes_Made'Old + 1) and then (if Vote = A then 
              Votes_Distribution(A) = Votes_Distribution(A)'Old + 1 elsif Vote = B then 
              Votes_Distribution(B) = Votes_Distribution(B)'Old + 1 elsif Vote = C then 
              Votes_Distribution(C) = Votes_Distribution(C)'Old + 1 elsif Vote = D then 
              Votes_Distribution(D) = Votes_Distribution(D)'Old + 1 elsif Vote = None 
              then Votes_Distribution(None) = Votes_Distribution(None)'Old + 1);
   
   function All_Voters_Voted return Boolean with 
     Global => (Num_Total_Voters, Num_Votes_Made),
     --Depends => (Num_Total_Voters => Num_Total_Voters),
     Pre => Num_Votes_Made <= Num_Total_Voters and Num_Total_Voters <= Natural'Last;
     --Post => True or False;
   
   function Find_Winner return Party with Global => (Votes_Distribution,Num_Votes_Made),
   Pre => 0 >= Num_Votes_Made;
    -- Returns Party with most votes assigned. 
    -- Returns None if multiple parties share the highest votes.
end Elections;
