class PostsController < ApplicationController
  
  def index
    @game = Games.find(params[:game_id])
    @posts = Post.all
  end

  def new
    @games = Games.find(params[:game_id])
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)
    if params[:game_id]
      @game = Game.find(params[:game_id])
      @post.game = @game
    end
    @post.user = current_user
    if @post.save!
      if params[:game_id]
        redirect_to game_path(@game)
      else
        redirect_to user_path(current_user)
      end 
    else
      render :new
    end
  end

  def edit
    @posts = Post.find(params[:id])
    @games = @posts.game
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to game_path(@game)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to game_path(@post.game)
  end
  private
  def post_params
    params.require(:post).permit(:content, :photo)
  end
end
