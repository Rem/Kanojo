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

ActiveRecord::Schema.define(version: 2020_10_11_184658) do

  create_table "girlfriends", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.integer "height"
    t.integer "rating"
    t.string "password_digest"
    t.integer "phone_number"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "girlfriend_id", null: false
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["girlfriend_id"], name: "index_locations_on_girlfriend_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "girlfriend_id", null: false
    t.integer "user_id", null: false
    t.datetime "date"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["girlfriend_id"], name: "index_reservations_on_girlfriend_id"
    t.index ["location_id"], name: "index_reservations_on_location_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "rating_user"
    t.integer "rating_girlfriend"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.integer "rating"
    t.string "password_digest"
    t.integer "phone_number"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "locations", "girlfriends"
  add_foreign_key "reservations", "girlfriends"
  add_foreign_key "reservations", "locations"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "reservations"
end
