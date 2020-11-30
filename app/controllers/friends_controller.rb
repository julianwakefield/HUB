class FriendsController < ApplicationController
  def create
    @user_friend = Friend.new
    @friend = Friend.find(params[:friend_id])
    @user_friend.friend = @friend
    @user_friend.user = current_user
    @user_friend.save

    redirect_to request.referrer
  end

  def destroy
    @user_friend = Friend.find(params[:id])
    @user_friend.destroy
    redirect_to request.referrer
  end
end
