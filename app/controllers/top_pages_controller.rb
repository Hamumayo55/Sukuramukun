class TopPagesController < ApplicationController
  layout 'top', only: [:top]

  def top
  end

  def q_and_a
  end

  def home
    if user_signed_in?
      @memo = Memo.where(username: current_user.username)
    end
  end
end
