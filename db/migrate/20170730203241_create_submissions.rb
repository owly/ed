class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :assignment_id
      t.text :answer
      t.date :submit_date

      t.timestamps null: false
    end
  end
end
