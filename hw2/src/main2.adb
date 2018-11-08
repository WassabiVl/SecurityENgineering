with Ada.Text_IO, Ada.Integer_Text_IO, Bank_Accounts;
use Ada.Text_IO, Ada.Integer_Text_IO, Bank_Accounts;



procedure main2 is
--     Account : Account_Type;
--     Acc_Num : Natural;
--     Balance : Cents_Type;
---------------------
--Test Get_Balance----
--  begin
--     Put("Please enter your account number: ");
--     Get(Acc_Num);
--     if Acc_Num = Account.Number then
--        Balance := Get_Balance(Account);
--        Put("Your balance is: ");
--        New_Line;
--        Put(Balance);
--     else
--        Put("please enter a valid account number");
--     end if;
   
   ---------------------
   ----Test Deposit-----
--     Account : Account_Type;
--     Acc_Num : Natural;
--     Amount : Cents_Type;
--  begin
--     Put("Type your account number: ");
--     Get(Acc_Num);
--     if Acc_Num = Account.Number then
--        Put("please provide amount to deposit: ");
--        Get(Amount);
--        Deposit(Account, Amount);
--     else
--        Put("please provide valid account number");
--        New_Line;
--     end if;
--     Put("Your Balance is: ");
--     Put(Account.Balance);

   -------------------------
   ------Test Withdraw------
--     Account : Account_Type;
--     Acc_Num : Natural;
--     Amount : Cents_Type;
--  begin
--     Put("Type your account number: ");
--     Get(Acc_Num);
--     if Acc_Num = Account.Number then
--        Put("please provide amount to withdraw: ");
--        Get(Amount);
--        Withdraw(Account, Amount);
--     else
--        Put("please provide valid account number");
--        New_Line;
--     end if;
--     Put("Your Balance is: ");
--     Put(Account.Balance); 
   
   --------------------------
   ----Test Transfer---------
   
   From : Account_Type;
   To : Account_Type;
   Amount: Cents_Type;
   Src_Acc : Natural;
   Dest_Acc : Natural;
   Selected_option: Integer;
   Balance : Cents_Type;
  
begin
   From.Number := 100;
   From.Balance := 1000;
   To.Number := 200;
   To.Balance := 300;
   
   Put("Type your account number: ");
   Get(Src_Acc);
   if Src_Acc = From.Number then
      Put("Please Choose a transaction type: ");
       New_Line;
      put("1: Get Balance" );
       New_Line;
      put("2: Deposit" );
       New_Line;
      put ("3: Withdraw");
       New_Line;
      put ("4: transfer money");
       New_Line;
      get(Selected_Option);
      
      case Selected_option is
         when 1 =>
            Balance := Get_Balance(From);
            Put("Your balance is: ");
            New_Line;
            Put(Balance);
         when 2 =>
            Put("please provide amount to deposit: ");
            Get(Amount);
            Deposit(From, Amount);
         when 3 =>
            Put("please provide amount to withdraw: ");
            Get(Amount);
            Withdraw(From, Amount);
         when 4 =>
            Put("please provide destination account: ");
            Get(Dest_Acc);
       
            if Dest_Acc = To.Number then
               Put("please enter the amount to transfer: ");
               Get(Amount);
               if Amount > From.Balance then
                  Put("Insufficient funds. Transaction terminated");
                  New_Line;
               else
                  Transfer(From, To, Amount);
               end if;
            else
               Put("incorrect destination account");
               New_Line;
               main2;
            end if;
         when others =>
            put("Option Selected is not an option");
            New_Line;
            main2;
      end case;
   else
      Put("please enter correct account number");
      New_Line;
      main2;
         
   end if;
   New_Line;
   Put("From Balance: ");
   New_Line;
   Put(From.Balance);
   New_Line;
   Put("To Balance: ");
   New_Line;
   Put(To.Balance);
end main2;
