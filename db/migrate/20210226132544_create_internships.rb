class CreateInternships < ActiveRecord::Migration[6.0]
  def change
    create_table :internships do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :gender
      t.string :college
      t.string :graduation_year
      t.string :cv

      t.timestamps
    end
  end
end
