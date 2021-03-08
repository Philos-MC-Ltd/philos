class AddWeeeklyReportsToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :weekly_report, null:false, foreign_key:true
  end
end
