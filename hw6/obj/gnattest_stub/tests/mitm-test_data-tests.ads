--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package MITM.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.MITM.Test_Data.Test
   with null record;

   procedure Test_Run_MITM_395c1f (Gnattest_T : in out Test);
   --  mitm.ads:4:5:Run_MITM

   package Caller is new AUnit.Test_Caller (Test);

end MITM.Test_Data.Tests;
--  end read only
