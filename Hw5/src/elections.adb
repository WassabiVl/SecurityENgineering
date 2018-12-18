package body Elections is
   Votes_A : Natural := 0;
   Votes_B : Natural := 0;
   Votes_C : Natural := 0;
   Votes_D : Natural := 0;
   Zero_Votes_Distribution: constant Votes_Array := (others => 0);
   Votes_Distribution: Votes_Array := Zero_Votes_Distribution;

   procedure Initialize(Num_Voters: Natural) is
    -- Resets the number of made votes and votes for all parties to 0, and
    -- sets the number of total Voters to the given.

   begin
      Num_Votes_Made := 0;
      --Num_Voters :=;
   end Initialize;

   procedure Vote_For(Vote: Party) is
      --perform the actual voting
   begin
      while Num_Votes_Made < Num_Total_Voters loop
         case Vote is
            when A =>
               Votes_A := Votes_A + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when B =>
               Votes_B := Votes_B + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when C =>
               Votes_C := Votes_C + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when D =>
               Votes_D := Votes_D + 1;
               Num_Votes_Made := Num_Votes_Made + 1;

            when others =>
               null;
         end case;
      end loop;
      Votes_Distribution(2) := Votes_A;
      Votes_Distribution(3) := Votes_B;
      Votes_Distribution(4) := Votes_C;
      Votes_Distribution(5) := Votes_D;

   end Vote_For;

   function All_Voters_Voted return Boolean is

   begin
      --checks if Num_Votes_Made = Num_Total_Voters
      if Num_Votes_Made = Num_Total_Voters then
         return True;
      else
         return False;
      end if;

   end All_Voters_Voted;

   function Find_Winner return Party is
    -- Returns Party with most votes assigned.
    -- Returns None if multiple parties share the highest votes.
      Winner := Party;
      Highest_Vote : Natural := Natural'First;
   begin
      if Votes_Distribution'Length = 0 then
         raise Empty_Array;
      end if;

      for I in Votes_Distribution'Range loop
         if Votes_Distribution(I) > Highest_Vote then
            Highest_Vote := Votes_Distribution(I);
         else
            if Votes_Distribution(I) = Highest_Vote then
               return None;
         end if;
      end loop;
      return


   end Find_Winner;

end Elections;
