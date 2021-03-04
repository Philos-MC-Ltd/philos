class AddStatusToInternships < ActiveRecord::Migration[6.0]
  def change
    add_column :internships, :status, :boolean, :default => false
  end
end
