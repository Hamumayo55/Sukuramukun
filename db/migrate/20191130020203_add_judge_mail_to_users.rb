class AddJudgeMailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :JudgeMail, :boolean
  end
end
