class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :username
      t.text :content
      t.integer :step_number

      t.timestamps
    end
  end
end
