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

ActiveRecord::Schema.define(version: 2018_10_01_025151) do

  create_table "houses", primary_key: "house_id", force: :cascade do |t|
    t.string "location"
    t.string "square_footage"
    t.integer "year_built"
    t.string "style", limit: 19
    t.integer "list_price"
    t.integer "floors"
    t.string "basement", limit: 3
    t.string "current_house_owner"
    t.string "contact_information_for_listing_realtor"
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "house_id"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "potential_buyers", id: false, force: :cascade do |t|
    t.integer "house_id"
    t.integer "buyer_id"
  end

end
