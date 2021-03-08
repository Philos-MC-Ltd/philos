class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.time :from
      t.time :to
      t.text :action

      t.timestamps
    end
  end
end
