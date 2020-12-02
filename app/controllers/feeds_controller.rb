class FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :edit, :update, :destroy]


  def index
    @feeds = Feed.all.order(created_at: :desc)
    @feed = Feed.new
  end

  def create
    Feed.create(feed_params)
    redirect_to feeds_path
  end



  private
    def feed_params
      params.require(:feed).permit(:body)
    end
end
