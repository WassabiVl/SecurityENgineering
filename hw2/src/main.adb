<<<<<<< HEAD
WITH Ada.Text_IO;
WITH Ada.Numerics.Discrete_Random;
use Ada.Text_IO, Ada.Numerics;
procedure Main is

   type Pips is (Two, Three, Four, Five, Six, Seven,
      Eight, Nine, Ten, Jack, Queen, King, Ace);
   type Suits is (Diamonds, Spades, Hearts, Clubs);
   type Card is record
      Pip : Pips;
      Suit : Suits;
      end record;
   type Index is range 1..53;
   subtype Deck_Index is Index range 1..52;
   type Deck_Reference is array(Deck_Index) of Deck_Index;
   type Deck is record
      Next_Card : Index;
      Deck_Offsets : Deck_Reference;
   end record;
begin
   FOR Num IN 1..12 LOOP
      Put(Discrete_Random.Random(Card));
      New_Line;
          end loop;
   null;
=======
with Ada.Numerics.Discrete_Random, Playing_Cards;
with Ada.Text_IO;
procedure Main is
   type the_deck is new Playing_Cards.Deck;
begin
   the_deck := Playing_Cards.New_Deck;
   the_deck := Shuffle(the_deck);
   put(Deal(the_deck));
>>>>>>> 778ec986f1fff4fc30e02146c65c42ccb215ccc0
end Main;


