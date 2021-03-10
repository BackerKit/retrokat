class CardsController < ApplicationController
  def create
    Card.create!(text: card_params[:text])
    render :json, {status: "ok"}
    # reply with some json?????
  end

  private

  def card_params
    params.require(:card).permit(:text)
  end
end
