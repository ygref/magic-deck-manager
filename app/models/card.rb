class Card < ApplicationRecord
  has_many :card_decks, :dependent => :destroy
  has_many :decks, through: :card_decks
end
