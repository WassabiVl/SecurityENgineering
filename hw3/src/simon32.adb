package body Simon32 is
   
   function Prepare_Key (Key : in Block_64 ) return Block_64 is
      tmp : byte;
      z: constant V := (1,1,1,1,1,0,1,0,0,0,1,0,0,1,0,1,0,1,1,0,0,0,0,1,1,1,0,0,1,1,0,1,1,1,1,1,0,1,0,0,0,1,0,0,1,0,1,0,1,1,0,0,0,0,1,1,1,0,0,1,1,0);
      key_temp: Block_64;
   begin
      key_temp:=Key;
      for i in 5..32 loop
         tmp := Rotate_Right(key_temp(i-4),3);
            if i = 5 then
               tmp := tmp xor key_temp(i-3);
            end if;
         tmp := tmp xor Rotate_Right(tmp,1);
         Key_temp(i) := (not key_temp(i-4)) xor tmp xor z(i-4) xor 3;
      end loop; 
      return key;
   end Prepare_Key;
   
   function Encrypt ( Plaintext : in Block_32; Key: in Block_64 ) return Block_32 is 
      tmp: byte;
      crypt : Block_32;
      Key_temp: Block_64 ;
   begin
      key_temp := Prepare_Key(Key => Key);
      crypt(0) := Plaintext(0);
      crypt(1) := Plaintext(1);
      for i in 1..32 loop 
         tmp := crypt(0);
         crypt(0) := crypt(1) xor ( Rotate_Left(crypt(0),1) and Rotate_Left(crypt(0),8) ) xor Rotate_Left(crypt(0),2) xor Key_temp(i);
         crypt(1) := tmp;
      end loop;
      return crypt;
   end Encrypt;
   
   function Decrypt ( Ciphertext : in Block_32; Key: in Block_64 ) return Block_32 is
       tmp: byte;
      crypt : Block_32;
       Key_temp: Block_64 ;
   begin
      
      Key_temp := Prepare_Key(Key => Key);
      crypt(0) := Ciphertext(0);
      crypt(1) := Ciphertext(1);
      for i in 1..32 loop 
         tmp := crypt(0);
         crypt(1) := crypt(0) xor ( Rotate_Left(crypt(1),1) and Rotate_Left(crypt(1),8) ) xor Rotate_Left(crypt(1),2) xor Key_temp(32-i);
         crypt(0) := tmp;
      end loop;
      return crypt;
      end Decrypt;

   

   

end Simon32; 
