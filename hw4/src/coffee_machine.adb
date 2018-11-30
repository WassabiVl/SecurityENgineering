package body Coffee_Machine is
   pragma SPARK_Mode;

   procedure Initialize(X : out State) is
   begin
      X := 0; --begin with no money
   end Initialize;

   --The machine states are:
   -- waiting for user to insert money (state 0)
   -- user has inserted 10 cents (state 1)
   -- user has inserted 20 cents (state 2)

   procedure X(S : in out State;
               Act : in Action;
               React : out Reaction) is
   begin
      React := Nothing; --initilize React
      case Act is
         when Twenty_Cent =>
            --update state and dispense coffee
            S := 2;
            React := Coffee;
         when Ten_Cent =>
            if S = 0 then
               --update state to reflect the new amount/credit
               --but still, no coffee
               S := 1;
               React := Nothing;
            elsif S = 1 then
               --update state to reflect new credit and dispense coffee
               S := 2;
               React := Coffee;
            end if;
         when Button =>
            if S = 0 then
               --there's is no money/credit to drop
               React := Nothing;
            else
               --there is 10 or 20 cents to return
                 --and reset the state to zero
               React := Drop_All_Coins;
               S := 0;
            end if;
            -- spark proof redundent
        -- when others =>
            --because the "when others must always
            --be added when using case expression
          --  React := Nothing;
      end case;
   end X;

end Coffee_Machine;
