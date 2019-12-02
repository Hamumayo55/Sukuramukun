class SendMailer < ApplicationMailer
  default from: "webstory1215@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  # en.send_mailer.send_mail.subject
  def setup_mailer(email)
    @email = email
    mail to: email
  end

  def send_mail
    if Time.current.include?("Mon")
      user = User.where(JudgeMail: 1)
      user.each do |usr|
        email = usr.email
        SendMailer.setup_mailer(email).deliver
      end
    end
  end
end
# SendMailer.send_mail.deliver