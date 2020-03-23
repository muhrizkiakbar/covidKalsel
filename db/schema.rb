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

ActiveRecord::Schema.define(version: 2020_03_23_082025) do

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
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_cities_on_deleted_at"
    t.index ["slug"], name: "index_cities_on_slug", unique: true
  end

  create_table "cov_dieds", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_dieds_on_city_id"
    t.index ["deleted_at"], name: "index_cov_dieds_on_deleted_at"
    t.index ["slug"], name: "index_cov_dieds_on_slug", unique: true
  end

  create_table "cov_negatives", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_negatives_on_city_id"
    t.index ["deleted_at"], name: "index_cov_negatives_on_deleted_at"
    t.index ["slug"], name: "index_cov_negatives_on_slug", unique: true
  end

  create_table "cov_odps", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_odps_on_city_id"
    t.index ["deleted_at"], name: "index_cov_odps_on_deleted_at"
    t.index ["slug"], name: "index_cov_odps_on_slug", unique: true
  end

  create_table "cov_pdps", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_pdps_on_city_id"
    t.index ["deleted_at"], name: "index_cov_pdps_on_deleted_at"
    t.index ["slug"], name: "index_cov_pdps_on_slug", unique: true
  end

  create_table "cov_positives", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_positives_on_city_id"
    t.index ["deleted_at"], name: "index_cov_positives_on_deleted_at"
    t.index ["slug"], name: "index_cov_positives_on_slug", unique: true
  end

  create_table "cov_recovereds", force: :cascade do |t|
    t.bigint "city_id"
    t.integer "amount"
    t.datetime "dateTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_cov_recovereds_on_city_id"
    t.index ["deleted_at"], name: "index_cov_recovereds_on_deleted_at"
    t.index ["slug"], name: "index_cov_recovereds_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.bigint "city_id"
    t.string "name_hospital"
    t.text "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_hospitals_on_city_id"
    t.index ["deleted_at"], name: "index_hospitals_on_deleted_at"
    t.index ["slug"], name: "index_hospitals_on_slug", unique: true
  end

  create_table "news", force: :cascade do |t|
    t.bigint "user_id"
    t.string "tittle"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_news_on_deleted_at"
    t.index ["slug"], name: "index_news_on_slug", unique: true
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
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_permissions_on_deleted_at"
    t.index ["slug"], name: "index_permissions_on_slug", unique: true
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
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_roles_on_deleted_at"
    t.index ["slug"], name: "index_roles_on_slug", unique: true
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
    t.string "slug"
    t.datetime "deleted_at"
    t.string "name"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["slug"], name: "index_users_on_slug", unique: true
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
