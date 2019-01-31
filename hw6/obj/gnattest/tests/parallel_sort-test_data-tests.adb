--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Parallel_Sort.Test_Data.

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
package body Parallel_Sort.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Parallel_Merge_Sort (Gnattest_T : in out Test);
   procedure Test_Parallel_Merge_Sort_16c159 (Gnattest_T : in out Test) renames Test_Parallel_Merge_Sort;
--  id:2.2/16c159ccec6f9ce9/Parallel_Merge_Sort/1/0/
   procedure Test_Parallel_Merge_Sort (Gnattest_T : in out Test) is
   --  parallel_sort.ads:11:5:Parallel_Merge_Sort
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Parallel_Merge_Sort;
--  end read only


--  begin read only
   procedure Test_merge_this (Gnattest_T : in out Test);
   procedure Test_merge_this_8de5ba (Gnattest_T : in out Test) renames Test_merge_this;
--  id:2.2/8de5bacc0bd59b99/merge_this/1/0/
   procedure Test_merge_this (Gnattest_T : in out Test) is
   --  parallel_sort.ads:13:4:merge_this
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_merge_this;
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
end Parallel_Sort.Test_Data.Tests;
