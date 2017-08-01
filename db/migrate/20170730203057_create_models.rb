class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :assignment
      t.integer :homework_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
