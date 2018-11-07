with Ada.Numerics.Discrete_Random;
With Ada.Text_IO;

package body Playing_Cards is
   type Internal_Deck is array(Deck_Index) of Card;
   Base_Deck : Internal_Deck;
   Base_Index : Index;
   ----------
   -- Deal --
   ----------
 
   procedure Deal (From : in out Deck; The_Card : out Card) is
   begin
      if From.Next_Card not in Deck_Index then
         raise Deck_Empty;
      end if;
      The_Card := Base_Deck(From.Deck_Offsets(From.Next_Card));
      From.Next_Card := From.Next_Card + 1;
   end Deal;
 
   --------------
   -- New_Deck --
   --------------
 
   function New_Deck return Deck is
      Temp : Deck;
   begin
      for I in Base_Deck'range loop
         Temp.Deck_Offsets(I) := I;
      end loop;
      Temp.Next_Card := 1;
      return Temp;
   end New_Deck;
 
   -----------
   -- Print --
   -----------
 
   procedure Print(The_Card : Card) is
      package Pip_Io is new Ada.Text_Io.Enumeration_Io(Pips);
      use Pip_Io;
      package Suit_Io is new Ada.Text_Io.Enumeration_Io(Suits);
      use Suit_Io;
   begin 
      
         Put(Item => The_Card.Pip, Width => 1);
         Ada.Text_Io.Put(" of ");
         Put(Item => The_Card.Suit, Width => 1);
         Ada.Text_Io.New_Line;
   end Print;
 
   -----------
   -- Print --
   -----------
 
   procedure Print(The_Deck : Deck) is
   begin
      for I in The_Deck.Next_Card..Deck_Index'Last loop
         Print(Base_Deck(The_Deck.Deck_Offsets(I)));
      end loop;
   end Print;
 
   -------------
   -- Shuffle --
   -------------
 
   procedure Shuffle (The_Deck : in out Deck) is
      procedure Swap(Left, Right : in out Deck_Index) is
         Temp : Deck_Index := Left;
      begin
         Left := Right;
         Right := Temp;
      end Swap;
      Swap_Index : Deck_Index;
   begin
      for I in Deck_Index'First..Deck_Index'Pred(Deck_Index'Last) loop
         declare
            subtype Remaining_Indices is Deck_Index range I..Deck_Index'Last;
            package Rand_Card is new Ada.Numerics.Discrete_Random(Remaining_Indices);
            use Rand_Card;
            Seed : Generator;
         begin
            Reset(Seed);
            Swap_Index := Random(Seed);
            Swap(The_Deck.deck_Offsets(I), The_Deck.Deck_Offsets(Swap_Index));
         end;
      end loop;
      The_Deck.Next_Card := 1;
   end Shuffle;
 
begin
   Base_Index := 1;
   for Suit in Suits'range loop
      for Pip in Pips'range loop
         Base_Deck(Base_Index) := (Pip, Suit);
         Base_Index := Base_Index + 1;
      end loop;
   end loop;
   

end Playing_Cards;
