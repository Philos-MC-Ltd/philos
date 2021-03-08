class CreateWeeklyReports < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_reports do |t|
      t.date :done_at
      t.text :lesson
      t.text :challenge

      t.timestamps
    end
  end
end
