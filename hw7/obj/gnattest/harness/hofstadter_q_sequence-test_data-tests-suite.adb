--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Hofstadter_Q_Sequence.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Hofstadter_Q_Sequence.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Q_7cfff6 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Mute_Workers_546b33 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Q_7cfff6,
         "hofstadter_q_sequence.ads:16:4:",
         Test_Q_7cfff6'Access);
      Runner_1.Create
        (Case_2_1_Test_Mute_Workers_546b33,
         "hofstadter_q_sequence.ads:20:4:",
         Test_Mute_Workers_546b33'Access);

      Result.Add_Test (Case_1_1_Test_Q_7cfff6'Access);
      Result.Add_Test (Case_2_1_Test_Mute_Workers_546b33'Access);

      return Result'Access;

   end Suite;

end Hofstadter_Q_Sequence.Test_Data.Tests.Suite;
--  end read only
