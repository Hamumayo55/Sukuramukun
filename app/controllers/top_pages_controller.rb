class TopPagesController < ApplicationController
  #before_action :authenticate_user!,only: [:home]
  layout 'top', only: [:top]

  def home
    @micropost = Micropost.all
    @micropost_new = Micropost.new
  end

  def top
  end

  def q_and_a
  end

  def sukuram_master
  end

  def watch
  end
end
