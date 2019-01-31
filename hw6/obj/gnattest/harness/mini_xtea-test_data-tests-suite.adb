--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with AUnit.Test_Caller;
with Gnattest_Generated;

package body Mini_XTEA.Test_Data.Tests.Suite is

   package Runner_1 is new AUnit.Test_Caller
     (GNATtest_Generated.GNATtest_Standard.Mini_XTEA.Test_Data.Tests.Test);

   Result : aliased AUnit.Test_Suites.Test_Suite;

   Case_1_1_Test_Decrypt_d6b0e1 : aliased Runner_1.Test_Case;
   Case_2_1_Test_Decrypt_Second_Half_4215f2 : aliased Runner_1.Test_Case;
   Case_3_1_Test_Encrypt_12ad5c : aliased Runner_1.Test_Case;
   Case_4_1_Test_Encrypt_First_Half_a77d8f : aliased Runner_1.Test_Case;

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
   begin

      Runner_1.Create
        (Case_1_1_Test_Decrypt_d6b0e1,
         "mini_xtea.ads:17:5:",
         Test_Decrypt_d6b0e1'Access);
      Runner_1.Create
        (Case_2_1_Test_Decrypt_Second_Half_4215f2,
         "mini_xtea.ads:18:5:",
         Test_Decrypt_Second_Half_4215f2'Access);
      Runner_1.Create
        (Case_3_1_Test_Encrypt_12ad5c,
         "mini_xtea.ads:21:5:",
         Test_Encrypt_12ad5c'Access);
      Runner_1.Create
        (Case_4_1_Test_Encrypt_First_Half_a77d8f,
         "mini_xtea.ads:22:5:",
         Test_Encrypt_First_Half_a77d8f'Access);

      Result.Add_Test (Case_1_1_Test_Decrypt_d6b0e1'Access);
      Result.Add_Test (Case_2_1_Test_Decrypt_Second_Half_4215f2'Access);
      Result.Add_Test (Case_3_1_Test_Encrypt_12ad5c'Access);
      Result.Add_Test (Case_4_1_Test_Encrypt_First_Half_a77d8f'Access);

      return Result'Access;

   end Suite;

end Mini_XTEA.Test_Data.Tests.Suite;
--  end read only
