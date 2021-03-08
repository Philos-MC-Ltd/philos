class AddUserToWeeklyReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :weekly_reports, :user, null: false, foreign_key: true
  end
end
