with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Bank_Accounts; use Bank_Accounts;

package body Bank_Accounts is

   function Get_Balance(Account : Account_Type) return Cents_Type is
      Balance : Cents_Type;
   begin
      Balance := Account.Balance;
      return Balance;
   end Get_Balance;

   procedure Deposit(Account: in out Account_Type;
                     Amount : Cents_Type) is
      Balance : Cents_Type := Account.Balance;
   begin
      Account.Balance := Balance + Amount;
   end Deposit;

   procedure Withdraw(Account : in out Account_Type;
                      Amount : Cents_Type) is
      Balance : Cents_Type := Account.Balance;
   begin
      if Amount > Balance then
         Put("you have insufficient balance.");
         New_Line;
      else
         Account.Balance := Balance - Amount;
      end if;
   end Withdraw;

   procedure Transfer (From : in out Account_Type;
                      To : in out Account_Type;
                       Amount : Cents_Type) is
   begin
      From.Balance := From.Balance - Amount;
      To.Balance := To.Balance + Amount;
   end Transfer;

end Bank_Accounts;






