class AddColumnsToSupports < ActiveRecord::Migration[6.0]
  def change
    add_column :supports, :caller, :string
    add_column :supports, :service, :string
    add_reference :supports, :user, null: false, foreign_key: true
  end
end
