class SendMailer < ApplicationMailer
  default from: "webstory1215@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mailer.send_mail.subject
  #
  def setup_mailer(email)
    @email = email
    mail to: email
  end

  def send_mail(email_list)
    for i in email_list do
      SendMailer.setup_mailer(i).deliver
    end
  end
end
# SendMailer.send_mail.deliver