with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;

package Bank_Accounts is

   subtype Cents_Type is Integer;

   type Account_Type is record
      Number : Natural;
      Balance : Cents_Type;
   end  record;

   function Get_Balance (Account : Account_Type) return Cents_Type;
   -- Returns the current Balance from Account.

   procedure Deposit(Account: in out Account_Type;
                     Amount : Cents_Type);
   --Deposits Amount at the given Account

   procedure Withdraw(Account : in out Account_Type;
                      Amount : Cents_Type);
   --Withdraws Amount from the given account

   procedure Transfer(From : in out Account_Type;
                      To : in out Account_Type;
                      Amount : Cents_Type);
   --Transfers Amount from Account From to Account To.

end Bank_Accounts;

