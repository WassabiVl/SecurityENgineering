WITH Ada.Text_IO;
with Playing_Cards;
WITH Ada.Numerics.Discrete_Random;
use Ada.Text_IO, Ada.Numerics;
procedure Main is
   the_deck : Playing_Cards.Deck;
   card : Playing_Cards.Card;
begin
   the_deck := Playing_Cards.New_Deck;
   Playing_Cards.Shuffle(The_Deck => the_deck);
   for I in 1..3 loop
      Playing_Cards.Deal(From => the_deck,The_Card => card);
      Playing_Cards.Print(The_Card => card);
      end loop;
end Main;


