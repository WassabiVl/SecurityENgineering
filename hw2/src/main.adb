with Ada.Numerics.Discrete_Random, Playing_Cards;
with Ada.Text_IO;
procedure Main is
   type the_deck is new Deck;
begin
   the_deck := New_Deck;
   the_deck := Shuffle(the_deck);
   put(Deal(the_deck));
end Main;


