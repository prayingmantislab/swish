class GamesController < ApplicationController
  def index
    @games = policy_scope(Game).order(date: :desc)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
  end
end
