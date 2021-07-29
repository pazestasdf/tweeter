class HomeController < ApplicationController
  def index
    # @tweets = Tweet.all
    @tweets = Tweet.order(created_at: :desc).page params[:page]
    #para no sobreescribir al de arriba
    @tweet = Tweet.new
  end

end
