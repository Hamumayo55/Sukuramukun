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

  def notification_setting
    user = User.where(username: current_user.username)
    user.update(JudgeMail: 1)
    redirect_to home_path
  end
end
