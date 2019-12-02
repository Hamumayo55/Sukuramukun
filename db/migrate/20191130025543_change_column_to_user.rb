class ChangeColumnToUser < ActiveRecord::Migration[5.2]

  def up
    change_column :users, :JudgeMail, :boolean, null: false, default: 0
  end

  # 変更前の状態
  def down
    change_column :users, :JudgeMail, :boolean, null: true, default: ""
  end

end
