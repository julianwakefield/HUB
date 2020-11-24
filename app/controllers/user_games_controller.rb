class UserGamesController < ApplicationController

  def create
    @user_game = UserGame.new
    @game = Game.find(params[:game_id])
    @user_game.game = @game
    @user_game.user = current_user
    @user_game.save
    redirect_to games_path
  end

  def destroy
    @user_game = UserGame.find(params[:id])
    @user_game.destroy
    redirect_to games_path
  end
end
