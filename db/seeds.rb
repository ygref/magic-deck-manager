# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Deck.create(name: "Affinity", format: "Modern", card_count: 60)
Deck.create(name: "Prime Speaker", format: "Commander", card_count: 100)

Card.create(name: "Ornithopter", cmc: 0, card_type: "creature",)
Card.create(name: "Mystic Snake", cmc: 4, card_type: "creature")

User.create(username: "Jason", email: "jasontest@test.com", password: "password")
User.create(username: "Wesley", email: "wesleytest@test.com", password: "password")