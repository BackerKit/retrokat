require 'rails_helper'

describe BoardController do
  describe '#new' do
    it 'renders a page' do
      get :new

      expect(response).to be_successful
    end
  end
end