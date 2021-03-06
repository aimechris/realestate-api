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

ActiveRecord::Schema.define(version: 20180905081308) do

  create_table "features", force: :cascade do |t|
    t.string "feature_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listimages", force: :cascade do |t|
    t.string "image"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_listimages_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "address"
    t.string "zip_code"
    t.string "city"
    t.integer "beds", limit: 8
    t.integer "baths", limit: 8
    t.decimal "sqft", precision: 30, scale: 20
    t.string "property_type"
    t.integer "built_year", limit: 8
    t.string "sale_type"
    t.decimal "price", precision: 15, scale: 2
    t.string "title"
    t.text "description"
    t.string "virtual_tour"
    t.string "default_img"
    t.string "status", default: "available", null: false
    t.string "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
