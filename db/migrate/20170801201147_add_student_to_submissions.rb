class AddStudentToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :user_id, :integer
    add_column :submissions, :homework_id, :integer
    remove_column :submissions, :assignment_id
  end
end
