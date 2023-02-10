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

ActiveRecord::Schema.define(version: 2023_02_10_031051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "factories", force: :cascade do |t|
    t.string "factory_name", null: false
    t.text "summary", null: false
    t.string "address", null: false
    t.float "latitude"
    t.float "longitude"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "factory_features", force: :cascade do |t|
    t.bigint "factory_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factory_id"], name: "index_factory_features_on_factory_id"
    t.index ["feature_id"], name: "index_factory_features_on_feature_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "factory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factory_id"], name: "index_favorites_on_factory_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "feature_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content", null: false
    t.text "image"
    t.bigint "user_id", null: false
    t.bigint "factory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factory_id"], name: "index_reviews_on_factory_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name", null: false
    t.integer "price"
    t.string "content"
    t.bigint "factory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factory_id"], name: "index_services_on_factory_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "image"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.text "profile"
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "factory_features", "factories"
  add_foreign_key "factory_features", "features"
  add_foreign_key "favorites", "factories"
  add_foreign_key "favorites", "users"
  add_foreign_key "reviews", "factories"
  add_foreign_key "reviews", "users"
  add_foreign_key "services", "factories"
end
