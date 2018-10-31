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
   --  Insert code here.
   null;
end Main;
