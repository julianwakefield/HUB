class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.all
  end

  def new
    @posts = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    @game = @post.game
    if @comment.save!
      if @game
        redirect_to game_path(@game)
      else 
        redirect_to user_path(current_user)
      end
    else
      render :new
    end
  end

  def edit
    @comments = Comment.find(params[:id])
    @posts = @comments.post
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to game_path(@comment.post.game)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
