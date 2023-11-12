# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(username: "Jason", email: "jasontest@test.com", password: "password")
User.create(username: "Wesley", email: "wesleytest@test.com", password: "password")

Deck.create(name: "Affinity", format: "Modern", card_count: 60, user_id: 1)
Deck.create(name: "Prime Speaker", format: "Commander", card_count: 100, user_id: 2)

Card.create(name: "Ornithopter", cmc: 0, card_type: "creature", power: 0, toughness: 2)
Card.create(name: "Memnite", cmc: 0, card_type: "creature", power: 1, toughness: 1)
Card.create(name: "Cranial Plating", cmc: 2, card_type: "artifact equipment", power: 0, toughness: 0)

Card.create(name: "Mystic Snake", cmc: 4, card_type: "creature", power: 2, toughness: 2)
Card.create(name: "Coiling Oracle", cmc: 2, card_type: "creature", power: 1, toughness: 1)
Card.create(name: "Riftsweeper", cmc: 2, card_type: "creature", power: 2, toughness: 2)


CardDeck.create(deck_id: 1, card_id: 1, quantity: 4)
CardDeck.create(deck_id: 1, card_id: 2, quantity: 4)
CardDeck.create(deck_id: 1, card_id: 3, quantity: 4)

CardDeck.create(deck_id: 2, card_id: 4, quantity: 1)
CardDeck.create(deck_id: 2, card_id: 5, quantity: 1)
CardDeck.create(deck_id: 2, card_id: 6, quantity: 1)


