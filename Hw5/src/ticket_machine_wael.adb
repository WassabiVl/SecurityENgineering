package body ticket_machine_wael is
procedure Initialize(S: out State) is
   begin
      S := 0; --begin with no money
   end Initialize;

   --ticket machine states are:
   --started/waiting for user to insert money (state = 0)
   --user has inserted single 5 EUR (state = 5)
   --user has inserted [two 5 EUR] or single Ten Eur (state = 10)
   --user has inserted [three 5 EUR] or [one 10 EUR and one 5 EUR] (state = 15)
   --user has inserted [four 5 EUR] or [one Ten and two 5 EUR] or [Two Ten EUR]
       --or a single Twenty EUR (state = 20)
   --user has inserted [five 5 EUR] or [one Ten EUR and three 5 EUR]
     --or [Two Ten EUR and one 5 EUR] or [a single Twenty EUR and single 5 EUR] (state = 25)
   --user has inserted [six 5 EUR] or [one Ten and four 5 EUR] or [two Ten EUR and two 5 EUR]
       -- or [three Ten EUR] or [one Twenty EUR and one Ten EUR] or [one Twenty EUR and two 5 EUR]
       --(state = 30)
    --if state < 30 => reation := Nothing
    --if state > 30 => reation := Print_ticket => reaction:= reset => state =:0   

   procedure Do_Action(S: in out State;
                       A: in Action;
                       R: out Reaction) is

      --I think I should have S'old and S'new variables...
      s_rose : State;
   begin
      s_rose := S;
      case A is
         when Insert_Twenty_Eur =>
            --update state to reflect amount, check total state and issue ticket
            S := 20 + s_rose;
         when Insert_Ten_Eur =>
            --update state to reflect amount, check total state and issue ticket
            S := 10 + s_rose;
         when Insert_Five_Eur =>
            S := 5 + s_rose;
         when Reset =>
            S := 0;
            R := Reset;
      end case;
      if S >= Ticket_Prize then
         R := Print_Ticket;
         S := 0;
      else
         R := Nothing;
      end if;
   end Do_Action;
end ticket_machine_wael;
