class PostsController < ApplicationController
  def new
    @games = Games.find(params[:game_id])
    @post = Post.new
  end

  def create
    @games = Game.find(params[:equipment_id])
    @post = Post.new(post_params)
    @post.game = @game
    @post.user = current_user
  end

  def edit
    @posts = Post.find(params[:id])
    @games = @posts.game
  end


  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:)
  end
end
