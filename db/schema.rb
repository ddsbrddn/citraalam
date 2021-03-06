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

ActiveRecord::Schema.define(version: 20161008224350) do

  create_table "bookings", force: :cascade do |t|
    t.string   "unit"
    t.string   "packet"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "total_participant"
    t.string   "status"
    t.text     "note"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "customer_id"
    t.integer  "user_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "organization"
    t.string   "segment"
    t.text     "address"
    t.string   "kecamatan"
    t.string   "city"
    t.string   "province"
    t.integer  "postal_code"
    t.string   "contact_person"
    t.integer  "phone"
    t.string   "email"
    t.integer  "total_visit"
    t.text     "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "lakesides", force: :cascade do |t|
    t.string   "organization"
    t.string   "packet"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "customer_id"
    t.integer  "booking_id"
    t.integer  "user_id"
    t.index ["booking_id"], name: "index_lakesides_on_booking_id"
    t.index ["customer_id"], name: "index_lakesides_on_customer_id"
    t.index ["user_id"], name: "index_lakesides_on_user_id"
  end

  create_table "riversides", force: :cascade do |t|
    t.string   "unit"
    t.string   "packet"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "organization"
    t.integer  "customer_id"
    t.integer  "booking_id"
    t.index ["booking_id"], name: "index_riversides_on_booking_id"
    t.index ["customer_id"], name: "index_riversides_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
