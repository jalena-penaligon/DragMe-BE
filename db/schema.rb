# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_21_203631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "performers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "instagram_token"
    t.string "photo"
    t.string "insta_url"
    t.string "facebook_url"
    t.string "twitter_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_performers", force: :cascade do |t|
    t.bigint "performer_id"
    t.bigint "show_id"
    t.index ["performer_id"], name: "index_show_performers_on_performer_id"
    t.index ["show_id"], name: "index_show_performers_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "description"
    t.string "event_url"
    t.string "poster_url"
    t.bigint "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_shows_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "venue_name"
    t.string "venue_google_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "show_performers", "performers"
  add_foreign_key "show_performers", "shows"
  add_foreign_key "shows", "venues"
end
