class SendMailer < ApplicationMailer
  default from: "webstory1215@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mailer.send_mail.subject
  #
  def send_mail(email)
    @email = email
    mail to: email
  end
end
# SendMailer.send_mail.deliver