class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.integer :user_id
      t.text :question
      t.string :title
      t.date :due_date

      t.timestamps null: false
    end
  end
end
