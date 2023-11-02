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
  def show
    @deck = Deck.find_by(id: params[:id])
    render :show
  end
  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.update(
      name: params[:name] || @deck.name,
      format: params[:game_format] || @deck.format,
      card_count: params[:card_count] || @deck.card_count,
    )
    render :show
  end
end
