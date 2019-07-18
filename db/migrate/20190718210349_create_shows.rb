class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.date :date
      t.string :description
      t.string :event_url
      t.string :poster_url
      t.references :venue, foreign_key: true
      t.timestamps
    end
  end
end
