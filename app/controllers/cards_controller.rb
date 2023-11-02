class CardsController < ApplicationController
  def index
    @cards = Card.all
    render :index
  end

end
