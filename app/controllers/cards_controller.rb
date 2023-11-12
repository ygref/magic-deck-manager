class CardsController < ApplicationController
  before_action :authenticate_user
  def index
    @cards = current_user.cards
    render :index
  end
  def show
    @card = Card.find_by(id: params[:id])
    render :show
  end
  def create
    @card = Card.find_or_create_by(
      name: params[:name],
      cmc: params[:cmc],
      card_type: params[:card_type],
      power: params[:power],
      toughness: params[:toughness],
      oracle_text: params[:oracle_text],
    )
    if params[:deck_id]
      @card_deck = CardDeck.find_or_create_by(
        card_id: @card.id,
        deck_id: params[:deck_id]
      )
      @card_deck.update(quantity: params[:quantity])
    end
    render :show
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.update(
      name: params[:name],
      cmc: params[:cmc],
      card_type: params[:card_type],
      power: params[:power],
      toughness: params[:toughness],
    )
    render :show
  end


  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy
    render json: { message: "Card deleted!!" }
  end
end
