class MailSendsController < ApplicationController
  def new
  end

  def create
    @email = current_user.email
    SendMailer.send_mail(@email).deliver
  end
end
