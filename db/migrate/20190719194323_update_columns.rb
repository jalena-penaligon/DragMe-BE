class UpdateColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :shows, :date, :datetime
    rename_column :venues, :name, :venue_name
    rename_column :venues, :google_id, :venue_google_id
  end
end
