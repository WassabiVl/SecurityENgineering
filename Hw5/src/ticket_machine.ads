package Ticket_Machine 
with SPARK_Mode is 
   pragma Assertion_Policy (Pre => Check,
                           Post => Check);
	-- Simulation of a ticket machine that hands out tickets which 
    -- cost 30 EUR each. The machine accepts only 5, 10, or 20 EUR
    -- notes and outputs the ticket immediately after the user has 
    -- paid the required amount. Note that overspending is possible. 
    -- The state is reset to 0 immediately after reset and after 
    -- printing the ticket.
	subtype State is Natural range 0..30;
	type Action is (Insert_Five_Eur, Insert_Ten_Eur, Insert_Twenty_Eur, Reset);
	type Reaction is (Nothing, Reset, Print_Ticket);
	
	Ticket_Prize: constant Natural := 30;
	
   procedure Initialize(S: out State) with 
     Global => null,
     Post => S = 0;
   procedure Do_Action(S: in out State; 
                       A: in Action; 
                       R: out Reaction) 
     with
       Global => null, 
       Depends => (S => (S, A), R => (S, A)),
       Pre => (S >= 0 and S <= 25 and (A = Insert_Five_Eur or  A = Insert_Ten_Eur 
               or A = Insert_Twenty_Eur or A = Reset)),
     Post => (if S = 0 then (R = Print_Ticket or R = Reset) elsif S > 0 then R = Nothing);
                
end Ticket_Machine;
