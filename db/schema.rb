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

ActiveRecord::Schema[7.0].define(version: 2024_04_21_124421) do
  create_table "likes", force: :cascade do |t|
    t.integer "fan_id", null: false
    t.integer "shoe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fan_id"], name: "index_likes_on_fan_id"
    t.index ["shoe_id"], name: "index_likes_on_shoe_id"
  end

  create_table "runs", force: :cascade do |t|
    t.string "distance"
    t.string "name"
    t.integer "vendor_id"
    t.integer "user_id"
    t.string "route"
    t.integer "waivers_count"
    t.integer "user_runs_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoes", force: :cascade do |t|
    t.string "size"
    t.string "brand"
    t.string "model"
    t.string "mileage", default: "0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_runs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "run_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "bottom_size"
    t.string "top_size"
    t.string "pronation_level"
    t.integer "shoe_id"
    t.boolean "admin", default: false
    t.string "avatar"
    t.integer "waivers_count", default: 0
    t.integer "user_runs_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.integer "runs_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waivers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "run_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "likes", "shoes"
  add_foreign_key "likes", "users", column: "fan_id"
end
