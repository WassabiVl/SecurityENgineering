package body Ticket_Machine is
   pragma Assertion_Policy (Pre => Check,
                           Post => Check);

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

   procedure Do_Action(S: in out State; A: in Action; R: out Reaction) with Pre => (S >=0),
     Post => (S < 30) is

      S_Update : State := S;
   begin
--        S_Update := S;
      case A is
         when Insert_Twenty_Eur =>
            --update state to reflect amount
            S := S_Update + 20;
            --Print ticket if total amount is the ticket prize else do nothing
            if S >= Ticket_Prize then
               R := Print_Ticket;
               S := 0;
            else
               R := Nothing;
            end if;

         when Insert_Ten_Eur =>
            --update state to reflect amount
            S := S_Update + 10;
            --Print ticket if total amount is the ticket prize else do nothing
            if S >= Ticket_Prize then
               R := Print_Ticket;
               S := 0;
            else
               R := Nothing;
            end if;

         when Insert_Five_Eur =>
            --update state to reflect amount
            S := S_Update + 5;
            --Print ticket if total amount is the ticket prize else do nothing
            if S >= Ticket_Prize then
               R := Print_Ticket;
               S := 0;
            else
               R := Nothing;
            end if;

         when Reset =>
            --reset and update state to start
            R := Reset;
            S := 0;
      end case;
   end Do_Action;
end Ticket_Machine;
