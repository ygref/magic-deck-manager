class CardDecksController < ApplicationController
def index
  @card_decks = CardDeck.all
  render :index 
end
def create
  @card_deck = CardDeck.find_or_create_by(
    card_id: params[:card_id],
    deck_id: params[:deck_id]
  )
  @card_deck.update(quantity: params[:quantity])
  render :show 
end

end
