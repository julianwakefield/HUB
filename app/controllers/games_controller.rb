class GamesController < ApplicationController
    def index
        @games = Game.all
      end
      def new
        @game = Game.new
      end
      def create
        @game = Game.new(game_params)
        @game.user = current_user
        if @game.save!
          redirect_to game_path(@game)
        else
          render :new
        end
      end
      
      def show
        @game = Game.new
        @games = Game.find(params[:id])
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
        @game = game.find(params[:id])
        @game.destroy
        redirect_to game_path(@game)
      end
      private
      def game_params
        params.require(:game).permit(:name)
      end
end
