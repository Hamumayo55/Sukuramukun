namespace :send_email do
  desc "実行処理の説明"
  task :setup_mail => :environment do
      user = User.where(JudgeMail: 1)
      user.each do |usr|
        email = usr.email
        SendMailer.send_mail(email).deliver
      end
  end
end