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
end
