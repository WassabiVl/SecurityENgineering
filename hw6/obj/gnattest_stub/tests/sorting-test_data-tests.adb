--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Sorting.Test_Data.

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
package body Sorting.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Selection_Sort (Gnattest_T : in out Test);
   procedure Test_Selection_Sort_58d3dc (Gnattest_T : in out Test) renames Test_Selection_Sort;
--  id:2.2/58d3dc7096d5c9bb/Selection_Sort/1/0/
   procedure Test_Selection_Sort (Gnattest_T : in out Test) is
   --  sorting.ads:6:4:Selection_Sort
--  end read only

      pragma Unreferenced (Gnattest_T);
      test_array : Natural_Array := (1,  2,  3,  4,  6,  7,  8,  9);
      A : Natural_Array := (4, 9, 3,  2, 7,  1, 6, 8);
      B : Natural_Array := (9, 4, 3,  2, 7,  1, 6, 8);
      C : Natural_Array := (9, 4, 3,  2, 1,  7, 6, 8);

   begin
      Selection_Sort(A);
      AUnit.Assertions.Assert
        (A = test_array ,
         "sort failed");
      Selection_Sort(B);
      AUnit.Assertions.Assert
        (B = test_array ,
         "sort failed");
      Selection_Sort(C);
      AUnit.Assertions.Assert
        (C = test_array ,
         "sort failed");

--  begin read only
   end Test_Selection_Sort;
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
end Sorting.Test_Data.Tests;
