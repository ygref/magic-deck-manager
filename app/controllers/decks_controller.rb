class DecksController < ApplicationController
  def index
    @decks = Deck.all
    render :index
  end
  def create
    @deck = Deck.create(
      name: params[:name],
      format: params[:game_format],
      card_count: params[:card_count],
    )
    render :show
  end
end
