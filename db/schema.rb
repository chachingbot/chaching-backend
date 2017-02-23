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

ActiveRecord::Schema.define(version: 20170216143022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classifications", force: :cascade do |t|
    t.string   "base_type"
    t.string   "sub_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "queries", force: :cascade do |t|
    t.string   "raw_input"
    t.integer  "classification_id"
    t.integer  "user_id"
    t.boolean  "resolved"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["classification_id"], name: "index_queries_on_classification_id", using: :btree
    t.index ["user_id"], name: "index_queries_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.json     "init_data"
    t.boolean  "employment_status"
    t.integer  "age"
    t.string   "nationality"
    t.float    "household_income"
    t.float    "personal_income"
    t.string   "marital_status"
    t.integer  "interaction"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "queries", "classifications"
  add_foreign_key "queries", "users"
end
