--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Hofstadter_Q_Sequence.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Hofstadter_Q_Sequence.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Q (Gnattest_T : in out Test);
   procedure Test_Q_7cfff6 (Gnattest_T : in out Test) renames Test_Q;
--  id:2.2/7cfff6c706ac0a3b/Q/1/0/
   procedure Test_Q (Gnattest_T : in out Test) is
   --  hofstadter_q_sequence.ads:16:4:Q
--  end read only

      pragma Unreferenced (Gnattest_T);
      N: Positive := 1;

   begin

      AUnit.Assertions.Assert
        (Q(1) = 1, "Test is failed.");
      AUnit.Assertions.Assert
        (Q(40) = 22, "Test is failed.");

        --(Q(20) = 6, "Test is failed.");

--  begin read only
   end Test_Q;
--  end read only


--  begin read only
   procedure Test_Mute_Workers (Gnattest_T : in out Test);
   procedure Test_Mute_Workers_d68750 (Gnattest_T : in out Test) renames Test_Mute_Workers;
--  id:2.2/d6875096b88c9a43/Mute_Workers/1/0/
   procedure Test_Mute_Workers (Gnattest_T : in out Test) is
   --  hofstadter_q_sequence.ads:20:4:Mute_Workers
--  end read only

      pragma Unreferenced (Gnattest_T);
      Q_Num, End_Time : Integer := 1;
      R_Array: Q_Array;
   begin

      --Mute_Workers(1,1,R_Array);
        AUnit.Assertions.Assert
          (Gnattest_Generated.Default_Assert_Value, "Test not implemented.");
      --AUnit.Assertions.Assert(R_Array = 1 , "test is passed");

--  begin read only
   end Test_Mute_Workers;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end Hofstadter_Q_Sequence.Test_Data.Tests;
