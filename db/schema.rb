# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141126030033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: true do |t|
    t.string   "phone_number"
    t.string   "website"
    t.string   "setting"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "business_name"
    t.string   "street_no"
    t.string   "street_name"
    t.string   "city"
    t.string   "zipcode"
    t.string   "state"
    t.string   "happy_hour_time"
  end

  create_table "ratings", force: true do |t|
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
    t.integer  "user_id"
  end

  add_index "ratings", ["business_id"], name: "index_ratings_on_business_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "name"
  end

end
