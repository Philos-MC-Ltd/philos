class CreateSupports < ActiveRecord::Migration[6.0]
  def change
    create_table :supports do |t|
      t.string :department
      t.string :phone
      t.time :time
      t.text :problem
      t.string :followup, default:"solved"
      t.timestamps
    end
  end
end
