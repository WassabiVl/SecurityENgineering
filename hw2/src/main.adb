with Playing_Cards;
procedure Main is
   the_deck : Playing_Cards.Deck;
   card : Playing_Cards.Card;
begin
   the_deck := Playing_Cards.New_Deck;
   Playing_Cards.Shuffle(The_Deck => the_deck);
   Playing_Cards.Deal_Three_Cards(From => the_deck,The_Card => card);
end Main;
