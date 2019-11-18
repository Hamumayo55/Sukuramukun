class TopPagesController < ApplicationController
  #before_action :authenticate_user!,only: [:home]


  def home
    @micropost = Micropost.all
    @micropost_new = Micropost.new
  end

  def watch
  end
end
