--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Vector.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Vector.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Plus_72512a : aliased Runner_1.Test_Case;
   Case_2_1_Test_Minus_68a7b4 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Multiply_a10e1f : aliased Runner_1.Test_Case;
   Case_4_1_Test_Multiply_3c8f66 : aliased Runner_1.Test_Case;
   Case_5_1_Test_Equal_a77ad2 : aliased Runner_1.Test_Case;
   Case_6_1_Test_Are_Orthogonal_cfff6c : aliased Runner_1.Test_Case;
   Case_7_1_Test_Cross_Product_0db7c7 : aliased Runner_1.Test_Case;
   Case_8_1_Test_Distance_55bb3a : aliased Runner_1.Test_Case;
   Case_9_1_Test_Distance_To_Origin_fd5984 : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Plus_72512a,
         "vector.ads:12:4:",
         Test_Plus_72512a'Access);
      Runner_1.Create
        (Case_2_1_Test_Minus_68a7b4,
         "vector.ads:16:4:",
         Test_Minus_68a7b4'Access);
      Runner_1.Create
        (Case_3_1_Test_Multiply_a10e1f,
         "vector.ads:18:4:",
         Test_Multiply_a10e1f'Access);
      Runner_1.Create
        (Case_4_1_Test_Multiply_3c8f66,
         "vector.ads:20:4:",
         Test_Multiply_3c8f66'Access);
      Runner_1.Create
        (Case_5_1_Test_Equal_a77ad2,
         "vector.ads:22:4:",
         Test_Equal_a77ad2'Access);
      Runner_1.Create
        (Case_6_1_Test_Are_Orthogonal_cfff6c,
         "vector.ads:25:4:",
         Test_Are_Orthogonal_cfff6c'Access);
      Runner_1.Create
        (Case_7_1_Test_Cross_Product_0db7c7,
         "vector.ads:27:4:",
         Test_Cross_Product_0db7c7'Access);
      Runner_1.Create
        (Case_8_1_Test_Distance_55bb3a,
         "vector.ads:29:4:",
         Test_Distance_55bb3a'Access);
      Runner_1.Create
        (Case_9_1_Test_Distance_To_Origin_fd5984,
         "vector.ads:31:4:",
         Test_Distance_To_Origin_fd5984'Access);

      Result.Add_Test (Case_1_1_Test_Plus_72512a'Access);
      Result.Add_Test (Case_2_1_Test_Minus_68a7b4'Access);
      Result.Add_Test (Case_3_1_Test_Multiply_a10e1f'Access);
      Result.Add_Test (Case_4_1_Test_Multiply_3c8f66'Access);
      Result.Add_Test (Case_5_1_Test_Equal_a77ad2'Access);
      Result.Add_Test (Case_6_1_Test_Are_Orthogonal_cfff6c'Access);
      Result.Add_Test (Case_7_1_Test_Cross_Product_0db7c7'Access);
      Result.Add_Test (Case_8_1_Test_Distance_55bb3a'Access);
      Result.Add_Test (Case_9_1_Test_Distance_To_Origin_fd5984'Access);

      return Result'Access;

   end Suite;

end Vector.Test_Data.Tests.Suite;
--  end read only
