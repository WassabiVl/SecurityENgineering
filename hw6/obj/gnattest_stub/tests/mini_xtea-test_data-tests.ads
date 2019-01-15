--  This package has been generated automatically by GNATtest.
--  Do not edit any part of it, see GNATtest documentation for more details.

--  begin read only
with Gnattest_Generated;
with AUnit.Test_Caller;

package Mini_XTEA.Test_Data.Tests is

   type Test is new GNATtest_Generated.GNATtest_Standard.Mini_XTEA.Test_Data.Test
   with null record;

   procedure Test_Decrypt_d6b0e1 (Gnattest_T : in out Test);
   --  mini_xtea.ads:17:5:Decrypt

   procedure Test_Decrypt_Second_Half_4215f2 (Gnattest_T : in out Test);
   --  mini_xtea.ads:18:5:Decrypt_Second_Half

   procedure Test_Encrypt_12ad5c (Gnattest_T : in out Test);
   --  mini_xtea.ads:21:5:Encrypt

   procedure Test_Encrypt_First_Half_a77d8f (Gnattest_T : in out Test);
   --  mini_xtea.ads:22:5:Encrypt_First_Half

   package Caller is new AUnit.Test_Caller (Test);

end Mini_XTEA.Test_Data.Tests;
--  end read only
