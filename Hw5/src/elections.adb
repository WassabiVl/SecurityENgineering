package body Elections is
   procedure Initialize(Num_Voters: Natural) is
    -- Resets the number of made votes and votes for all parties to 0, and
    -- sets the number of total Voters to the given.
      Num_Votes_Made := 0;
      Num_Total_Voters := 0;
   begin


   end Initialize;

   procedure Vote_For(Vote: Party) is
      --perform the actual voting
      Vote := None;
      For_A : Natural := 0;
      For_B : Natural := 0;
      For_C : Natural := 0;
      For_D : Natural := 0;

     begin
      case Vote is
         when A =>
            For_A := For_A + 1;
            Num_Votes_Made := Num_Votes_Made + 1;

         when B =>
            For_B := For_B + 1;
            Num_Votes_Made := Num_Votes_Made + 1;

         when C =>
            For_C := For_C + 1;
            Num_Votes_Made := Num_Votes_Made + 1;

         when D =>
            For_D := For_D + 1;
            Num_Votes_Made := Num_Votes_Made + 1;

         when other =>
            null;
      end case;

   end Vote_For;

   function All_Voters_Voted return Boolean is

   begin
      --checks if Num_Votes_Made = Num_Total_Voters
      if Num_Votes_Made = Num_Total_Voters then
         return True
      else
         return False
      end if;

   end All_Voters_Voted;

   function Find_Winner return Party is
    -- Returns Party with most votes assigned.
    -- Returns None if multiple parties share the highest votes.
   end Find_Winner;

end Elections;
