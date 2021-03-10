require 'rails_helper'

describe CardsController do
  describe '#create' do
    it 'creates a card' do
      params = {card: {text: "This week was great"}}

      post :create, params: params

      expect(Card.count).to eq(1)
    end
  end
end
