require File.expand_path(File.dirname(__FILE__) + "/environment")
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
set :output, "#{Rails.root}/log/cron.log"
set :job_template, "/bin/zsh -l -c ':job'"
set :bundle_command, 'bundle exec'
set :rails_path, "#{Rails.root}"
job_type :runner,  "cd #{Rails.root} | :bundle_command rails runner -e :environment ':task' :output"


every 1.day, at: '3:00 pm' do
    runner "SendMailer.send_mail"
end
