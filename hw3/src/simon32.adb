with Interfaces;
use Interfaces;
package body Simon32 is
   type z is array (1,1,1,1,1,0,1,0,0,0,1,0,0,1,0,1,0,1,1,0,0,0,0,1,1,1,0,0,1,1,0,1,1,1,1,1,0,1,0,0,0,1,0,0,1,0,1,0,1,1,0,0,0,0,1,1,1,0,0,1,1,0);
   
   procedure Prepare_Key (Key : in out Block_64 ) is
      i : u8;
      tmp : Block_64;
      tmp2 : Block_64;
   begin
      for i in 4..32 loop
         tmp := Rotate_Right(Key(i-4),3);
            if i == 4 then
               tmp := tmp xor key(i-3);
            end if;
         tmp := tmp xor Rotate_Right(tmp,1);
         -- tmp2 =>  not Key(i-4), base 2;
         Key(i) := not Key(i-4) xor tmp ^ z(i-4) ^ 3;
      end loop; 
      return Key;
   end Prepare_Key;
   
   function Encrypt ( Plaintext : in Block_32, , Key: in Block_64 ) return Block_32 is 
      tmp: Block_32;
      crypt : Block_32;
   begin
      crypt(0) := Plaintext(0);
      crypt(1) := Plaintext(1);
      for i in 1..32 loop)
           crypt(0) := crypt(1) xor ( Rotate_Left(crypt(0),1) and Rotate_Left(crypt(0),8) ) xor Rotate_Left(crypt(0),2) xor key(i);
         crypt(1) := tmp;
      end loop;
      return crypt;
   end Encrypt;
   

   

   

end Simon32; 
