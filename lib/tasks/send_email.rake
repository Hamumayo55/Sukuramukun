namespace :send_email do
  desc "実行処理の説明"
  task :setup_mail => :environment do
    if Time.now.wday == 1
      user = User.where(JudgeMail: 1)
      user.each do |usr|
        email = usr.email
        SendMailer.send_mail(email).deliver
        puts "success send email"
      end
    else 
      puts "今日は月曜日じゃないよ"
    end
  end
end