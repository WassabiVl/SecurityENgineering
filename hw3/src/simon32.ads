with Ada.Text_IO, Interfaces; 
use  Ada.Text_IO, Interfaces; 
package Simon32 is
   subtype byte is Unsigned_8;
   package Byte_IO is new Ada.Text_Io.Modular_IO (Byte);
   --  Unsigned 8-bit integer
    subtype word is Unsigned_16;
   package word_IO is new Ada.Text_Io.Modular_IO (word);
   --  Unsigned 16-bit integer
   type Bytes is array ( Integer range <>) of byte ; 
   type Words is array ( Integer range <>) of word ; 
   type Block_32 is new Bytes (0..3) ; 
   type Block_64 is new Bytes (0..7) ;
   type V is array (Integer range 1..62) of byte;

   Cipher_Not_Initialized_Exception : exception;

   function Decrypt ( Ciphertext : in Block_32; Key: in Block_64 ) return Block_32 ;
   -- Decrypts the given ciphertext block and returns the corresponding
   -- plaintext block . Requires that a key was given by calling Prepare_Key
   -- before ; raises a Cipher_Not_Initialized_Exception otherwise .
   function Encrypt ( Plaintext : in Block_32; Key: in Block_64 ) return Block_32 ;
   -- Encrypts the given plaintext block and returns the corresponding
   -- ciphertext block . Requires that a key was given by calling Prepare_Key
   -- before ; raises a Cipher_Not_Initialized_Exception otherwise .
   procedure Prepare_Key (Key : in Block_64 );
   -- Generates the round keys from the given cipher key .
   -- Must be invoked before any en - or decryption can happen .
   
private
   Num_Rounds : constant Positive := 32;
   Num_State_Words: constant Positive := 2;

   type Key_Type is array (1.. Num_Rounds ) of Word;

   Round_Keys : Key_Type ;

end Simon32;
