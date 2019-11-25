class MailSendsController < ApplicationController
  def new
  end

  def edit
  end

  def create
    SendMailer.send_mail.deliver
  end
end
