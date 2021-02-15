class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :gender, :integer, default: 0, index: true
    add_column :users, :ID_number, :string
    add_column :users, :picture, :string

  end
end
