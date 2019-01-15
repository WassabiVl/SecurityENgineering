--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Mini_XTEA.Test_Data.

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
package body Mini_XTEA.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Decrypt (Gnattest_T : in out Test);
   procedure Test_Decrypt_d6b0e1 (Gnattest_T : in out Test) renames Test_Decrypt;
--  id:2.2/d6b0e1cd938f5a23/Decrypt/1/0/
   procedure Test_Decrypt (Gnattest_T : in out Test) is
   --  mini_xtea.ads:17:5:Decrypt
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Decrypt;
--  end read only


--  begin read only
   procedure Test_Decrypt_Second_Half (Gnattest_T : in out Test);
   procedure Test_Decrypt_Second_Half_4215f2 (Gnattest_T : in out Test) renames Test_Decrypt_Second_Half;
--  id:2.2/4215f2f618075494/Decrypt_Second_Half/1/0/
   procedure Test_Decrypt_Second_Half (Gnattest_T : in out Test) is
   --  mini_xtea.ads:18:5:Decrypt_Second_Half
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Decrypt_Second_Half;
--  end read only


--  begin read only
   procedure Test_Encrypt (Gnattest_T : in out Test);
   procedure Test_Encrypt_12ad5c (Gnattest_T : in out Test) renames Test_Encrypt;
--  id:2.2/12ad5cb732449729/Encrypt/1/0/
   procedure Test_Encrypt (Gnattest_T : in out Test) is
   --  mini_xtea.ads:21:5:Encrypt
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Encrypt;
--  end read only


--  begin read only
   procedure Test_Encrypt_First_Half (Gnattest_T : in out Test);
   procedure Test_Encrypt_First_Half_a77d8f (Gnattest_T : in out Test) renames Test_Encrypt_First_Half;
--  id:2.2/a77d8ffc3884cdc3/Encrypt_First_Half/1/0/
   procedure Test_Encrypt_First_Half (Gnattest_T : in out Test) is
   --  mini_xtea.ads:22:5:Encrypt_First_Half
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Gnattest_Generated.Default_Assert_Value,
         "Test not implemented.");

--  begin read only
   end Test_Encrypt_First_Half;
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
end Mini_XTEA.Test_Data.Tests;
