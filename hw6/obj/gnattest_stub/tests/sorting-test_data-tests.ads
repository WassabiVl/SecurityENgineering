--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package Sorting.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.Sorting.Test_Data.Test
   with null record;

   procedure Test_Selection_Sort_58d3dc (Gnattest_T : in out Test);
   --  sorting.ads:6:4:Selection_Sort

   procedure Test_Sorted_0c4740 (Gnattest_T : in out Test);
   --  sorting.ads:11:4:Sorted

   package Caller is new AUnit.Test_Caller (Test);

end Sorting.Test_Data.Tests;
--  end read only
