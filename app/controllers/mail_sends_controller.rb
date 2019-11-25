class MailSendsController < ApplicationController
  def new
  end

  def create
    @email = current_user.email
    SendMailer.send_mail(@email).deliver
    redirect_to home_path
  end
end
