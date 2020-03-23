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

ActiveRecord::Schema.define(version: 2020_03_23_063911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "call_center"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cov_positive_count"
    t.integer "cov_negative_count"
    t.integer "cov_recovered_count"
    t.integer "cov_died_count"
    t.integer "cov_odp_count"
    t.integer "cov_pdp_count"
  end

  create_table "cov_dieds", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_dieds_on_city_id"
  end

  create_table "cov_negatives", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_negatives_on_city_id"
  end

  create_table "cov_odps", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_odps_on_city_id"
  end

  create_table "cov_pdps", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_pdps_on_city_id"
  end

  create_table "cov_positives", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_positives_on_city_id"
  end

  create_table "cov_recovereds", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_cov_recovereds_on_city_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.bigint "city_id"
    t.string "name_hospital"
    t.text "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_hospitals_on_city_id"
  end

  create_table "news", force: :cascade do |t|
    t.bigint "user_id"
    t.string "tittle"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.string "resource"
    t.string "action"
    t.text "description"
    t.boolean "page"
    t.text "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_permissions", force: :cascade do |t|
    t.bigint "permission_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
    t.index ["role_id"], name: "index_role_permissions_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "cov_dieds", "cities"
  add_foreign_key "cov_negatives", "cities"
  add_foreign_key "cov_odps", "cities"
  add_foreign_key "cov_pdps", "cities"
  add_foreign_key "cov_positives", "cities"
  add_foreign_key "cov_recovereds", "cities"
  add_foreign_key "hospitals", "cities"
  add_foreign_key "news", "users"
  add_foreign_key "role_permissions", "permissions"
  add_foreign_key "role_permissions", "roles"
  add_foreign_key "users", "roles"
end
