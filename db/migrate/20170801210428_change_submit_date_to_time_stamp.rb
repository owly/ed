class ChangeSubmitDateToTimeStamp < ActiveRecord::Migration
 def up
    change_column :submissions, :submit_date, :datetime
  end

  def down
    change_column :submissions, :submit_date, :date
  end
end
