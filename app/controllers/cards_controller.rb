class CardsController < ApplicationController
  def index
    @cards = Card.all
    render :index
  end
  def create
    @card = Card.create(
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
