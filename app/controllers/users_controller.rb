class UsersController < ApplicationController

  before_action :set_users, only: [:index, :show]

  def index
    @users = User.all
  end
  # GET /users/:id
  def show
    @user = User.find(params[:id])
    # Rails does the magic.
  end

  def add_friends
    @user = User.find(params[:user])
    current_user.friend_request(@user)
    @user.accept_request(current_user)
    redirect_back fallback_location: "/users"
  end

  def remove_friends
    @user = User.find(params[:user])
    current_user.remove_friend(@user)
    redirect_back fallback_location: "/users"
  end

  # GET /users
  private

    def set_users
      @users =  User.where.not id: current_user.id
    end

    def user_params
      params.require(:user).permit(:photo, :nickname)
    end

end

