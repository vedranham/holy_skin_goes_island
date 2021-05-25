# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_25_104608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "description"
    t.date "start_time"
    t.date "end_time"
    t.bigint "user_id", null: false
    t.bigint "island_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["island_id"], name: "index_bookings_on_island_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "islands", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.integer "daily_rate"
    t.boolean "availability"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_islands_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "e_mail"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "islands"
  add_foreign_key "bookings", "users"
  add_foreign_key "islands", "users"
end
