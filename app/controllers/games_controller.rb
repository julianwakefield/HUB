class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @user = current_user
    if @game.save!
      Chat.create!(game: @game, name: @game.name)
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
    @posts = Post.where(game: @game).order(created_at: :desc)
    @comment = Comment.new
    @message = Message.new
    @post = Post.new
  
  end

  def edit
    @games = game.find(params[:id])
    @games = @games.game
  end

  def update
    @game = game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :photo)
  end
end
