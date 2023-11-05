json.id deck.id
json.name deck.name
json.format deck.format
json.card_count deck.card_count
json.card_decks deck.card_decks, partial: "card_decks/card_deck", as: :card_deck
