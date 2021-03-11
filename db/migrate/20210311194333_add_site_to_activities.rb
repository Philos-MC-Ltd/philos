class AddSiteToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :site, :string
  end
end
