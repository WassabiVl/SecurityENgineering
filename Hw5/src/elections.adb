package body Elections is

   procedure Initialize(Num_Voters: Natural) is
    -- Resets the number of made votes and votes for all parties to 0, and
    -- sets the number of total Voters to the given.
   begin
      Num_Votes_Made := 0;
      Num_Total_Voters := Num_Voters;

   end Initialize;

   procedure Vote_For(Vote: Party) is
      --perform the actual voting
   begin
      --perform voting until total number of voter is reached
      while Num_Votes_Made <= Num_Total_Voters loop
         case Vote is
            when A =>
               Votes_Distribution(A) := Votes_Distribution(A) + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when B =>
               Votes_Distribution(B) := Votes_Distribution(B) + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when C =>
               Votes_Distribution(C) := Votes_Distribution(C) + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when D =>
               Votes_Distribution(D) := Votes_Distribution(D) + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when None =>
               Votes_Distribution(None) := Votes_Distribution(None) + 1;
               Num_Votes_Made := Num_Votes_Made + 1;
         end case;
      end loop;

   end Vote_For;

   function All_Voters_Voted return Boolean is

   begin
      if Num_Votes_Made = Num_Total_Voters then
         return True;
      else
         return False;
      end if;

   end All_Voters_Voted;

   function Find_Winner return Party is
    -- Returns Party with most votes assigned.
    -- Returns None if multiple parties share the highest votes.
      Winner : Party;
      Highest_Vote : Natural := Natural'First;
   begin
      if Votes_Distribution'Length = 0 then
         raise Empty_Array;
      end if;

      for I in Votes_Distribution'Range loop

         if Votes_Distribution(I) > Highest_Vote then
            Highest_Vote := Votes_Distribution(I);
            Winner := I;
         else
            if Votes_Distribution(I) = Highest_Vote then
               return None;
            end if;
         end if;
      end loop;
        return Winner;

   end Find_Winner;

end Elections;
