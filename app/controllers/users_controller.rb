class UsersController < ApplicationController
    # GET /users/:id
  def show
    @user = User.find(params[:id])
    # Rails does the magic.
  end

  # GET /users
  def index
    @users = User.all
  end


end

