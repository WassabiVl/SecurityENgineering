--  This package is intended to set up and tear down  the test environment.
--  Once created by GNATtest, this package will never be overwritten
--  automatically. Contents of this package can be modified in any way
--  except for sections surrounded by a 'read only' marker.

package body Graph.Graph_Type_Test_Data is

   Local_Graph_Type : aliased GNATtest_Generated.GNATtest_Standard.Graph.Graph_Type;
   procedure Set_Up (Gnattest_T : in out Test_Graph_Type) is
      X : Test_Graph_Type'Class renames Test_Graph_Type'Class (Gnattest_T);
   begin
      Gnattest_T.Fixture := Local_Graph_Type'Access;
      X.User_Set_Up;
   end Set_Up;

   procedure Tear_Down (Gnattest_T : in out Test_Graph_Type) is
      X : Test_Graph_Type'Class renames Test_Graph_Type'Class (Gnattest_T);
   begin
      X.User_Tear_Down;
   end Tear_Down;

end Graph.Graph_Type_Test_Data;
