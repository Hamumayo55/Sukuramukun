class AddUsernameToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :username, :string
  end
end
