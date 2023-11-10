class DecksController < ApplicationController
  before_action :authenticate_user
  def index
    @decks = current_user.decks
    render :index
  end
  def create
    @deck = current_user.decks.create(
      name: params[:name],
      format: params[:game_format],
      card_count: params[:card_count],
    )
    if @deck.persisted?  
      render :show, status: :created
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
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
  def destroy
    @deck = Deck.find_by(id: params[:id])
    @deck.destroy
    render json: { message: "Deck Deleted!!" }
  end
end
