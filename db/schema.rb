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

ActiveRecord::Schema.define(version: 20160820010928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "picture"
    t.string   "city_website"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "city_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "city_users", ["city_id"], name: "index_city_users_on_city_id", using: :btree
  add_index "city_users", ["user_id"], name: "index_city_users_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["city_id"], name: "index_posts_on_city_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "city_users", "cities"
  add_foreign_key "city_users", "users"
  add_foreign_key "posts", "cities"
  add_foreign_key "posts", "users"
end
