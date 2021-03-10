require 'rails_helper'

describe BoardsController do
  render_views
  describe '#create' do
    it 'creates a new board' do
      params = { board: {name: 'coolest board ever'} }
      post :create, params: params
      expect(Board.count).to eq 1
    end

    it 'redirects to board show page' do
      params = { board: {name: 'coolest board ever'} }
      post :create, params: params
      expect(response).to redirect_to(board_path(Board.last))
    end
  end

  describe '#new' do
    it 'renders a form' do
      get :new
      expect(response).to be_successful
    end
  end

  describe '#show' do
    it 'shows board' do
      board = Board.create(name: "cool board")
      get :show, params: { id: board.id }

      expect(response.body).to include(board.name)
    end
  end
end
