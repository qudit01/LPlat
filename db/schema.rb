# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_31_003230) do
  create_table "buses", force: :cascade do |t|
    t.integer "car_id", null: false
    t.string "plate", null: false
    t.json "seats", null: false
    t.string "brand", null: false
    t.string "model"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "unique_cars", unique: true
  end

  create_table "buys", force: :cascade do |t|
    t.float "total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ticket_id", null: false
    t.integer "user_id", null: false
    t.index ["ticket_id"], name: "index_buys_on_ticket_id"
    t.index ["user_id"], name: "index_buys_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.date "departure_date", null: false
    t.string "departure_hour", null: false
    t.string "platform", null: false
    t.integer "seat", null: false
    t.string "destination", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "bus_id", null: false
    t.index ["bus_id"], name: "index_tickets_on_bus_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ticket_id", null: false
    t.integer "bus_id", null: false
    t.datetime "arrival_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bus_id"], name: "index_trips_on_bus_id"
    t.index ["ticket_id"], name: "index_trips_on_ticket_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birthday", null: false
    t.integer "dni", null: false
    t.integer "phone", null: false
    t.json "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.index ["dni"], name: "unique_dnis", unique: true
    t.index ["email"], name: "unique_emails", unique: true
  end

  add_foreign_key "buys", "tickets"
  add_foreign_key "buys", "users"
  add_foreign_key "tickets", "buses"
  add_foreign_key "tickets", "users"
  add_foreign_key "trips", "buses"
  add_foreign_key "trips", "tickets"
  add_foreign_key "trips", "users"
end
