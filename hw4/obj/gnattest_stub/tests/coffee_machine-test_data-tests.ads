--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package Coffee_Machine.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.Coffee_Machine.Test_Data.Test
   with null record;

   procedure Test_Initialize_9b5956 (Gnattest_T : in out Test);
   --  coffee_machine.ads:15:4:Initialize

   procedure Test_X_ceffac (Gnattest_T : in out Test);
   --  coffee_machine.ads:16:4:X

   package Caller is new AUnit.Test_Caller (Test);

end Coffee_Machine.Test_Data.Tests;
--  end read only
