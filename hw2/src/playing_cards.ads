-- https://rosettacode.org/wiki/Playing_cards/Ada
package Playing_Cards is

   pragma Elaborate_Body(Playing_Cards);
 
   type Card is private;
   type Deck is private;

   procedure Print(The_Card : Card);
   procedure Deal_Three_Cards(From : in out Deck; The_Card : out Card);
   procedure Shuffle(The_Deck : in out Deck);
   function New_Deck return Deck;
   Deck_Empty : exception;
private
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

end Playing_Cards;
