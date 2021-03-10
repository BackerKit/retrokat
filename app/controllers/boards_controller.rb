class BoardsController < ApplicationController
  def new
    @board = Board.new
    render :new
  end

  def create
    board = Board.create!(board_params)
    redirect_to board_path(board)
  end

  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
