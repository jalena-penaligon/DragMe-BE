class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :google_id
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
