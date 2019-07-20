class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
      t.string :name
      t.string :bio
      t.string :instagram_token
      t.string :photo
      t.string :insta_url
      t.string :facebook_url
      t.string :twitter_url

      t.timestamps
    end
  end
end
