--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Coffee_Machine.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Coffee_Machine.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Initialize_9b5956 : aliased Runner_1.Test_Case;
   Case_2_1_Test_X_ceffac : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Initialize_9b5956,
         "coffee_machine.ads:15:4:",
         Test_Initialize_9b5956'Access);
      Runner_1.Create
        (Case_2_1_Test_X_ceffac,
         "coffee_machine.ads:16:4:",
         Test_X_ceffac'Access);

      Result.Add_Test (Case_1_1_Test_Initialize_9b5956'Access);
      Result.Add_Test (Case_2_1_Test_X_ceffac'Access);

      return Result'Access;

   end Suite;

end Coffee_Machine.Test_Data.Tests.Suite;
--  end read only
