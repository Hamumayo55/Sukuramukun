class TopPagesController < ApplicationController
  layout 'top', only: [:top]

  def top
  end

  def q_and_a
  end

  def home
    @memo = Memo.where(username: current_user.username)
  end
end
