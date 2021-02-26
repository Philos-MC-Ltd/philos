class RemoveCvFromInternships < ActiveRecord::Migration[6.0]
  def change
    remove_column :internships, :cv
  end
end
