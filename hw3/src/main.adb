with Ada.Text_IO, Interfaces; with Simon32;
use  Ada.Text_IO, Interfaces; use Simon32;

procedure Main is
   key: Block_64;
   plaintext : Block_32;
   chiphertext: Block_32;
   answer : Block_32;
begin
   key:= 1918111009080100;
   plaintext:= 6574694c;
   chiphertext:= a86842f2;
   answer := Encrypt(Plaintext => plaintext,
                Key       => key);
   Put(answer);
end Main;
