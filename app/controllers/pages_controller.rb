class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    # @games = current_user.games
    @games = Game.all
    @post = Post.new
    @comment = Comment.new
    
  end
end
