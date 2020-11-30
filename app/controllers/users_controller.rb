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

  # GET /users
  private

    def set_users
      @users = User.all
    end

    def user_params
      params.require(:user).permit(:photo, :nickname)
    end

end

