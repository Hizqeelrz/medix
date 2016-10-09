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

ActiveRecord::Schema.define(version: 20161009152758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "areas", ["province_id"], name: "index_areas_on_province_id", using: :btree

  create_table "asset_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "assets", force: :cascade do |t|
    t.string   "name"
    t.integer  "asset_category_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "assets", ["asset_category_id"], name: "index_assets_on_asset_category_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["area_id"], name: "index_cities_on_area_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "company"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "equipments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "make"
    t.string   "model"
    t.string   "company"
    t.string   "price"
    t.string   "capacity"
    t.string   "life"
    t.integer  "vendor_id"
  end

  add_index "equipments", ["vendor_id"], name: "index_equipments_on_vendor_id", using: :btree

  create_table "expense_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "products", ["product_category_id"], name: "index_products_on_product_category_id", using: :btree

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raw_material_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string   "name"
    t.string   "quantity"
    t.string   "price"
    t.integer  "vendor_id"
    t.integer  "raw_material_category_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "raw_materials", ["raw_material_category_id"], name: "index_raw_materials_on_raw_material_category_id", using: :btree
  add_index "raw_materials", ["vendor_id"], name: "index_raw_materials_on_vendor_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.string   "nic"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.date     "dob"
    t.string   "phone"
    t.string   "mobile"
    t.date     "joining_date"
    t.integer  "marital_status"
    t.integer  "basic_salary"
    t.integer  "qualification"
    t.integer  "boss_id"
    t.string   "job_province"
    t.string   "job_area"
    t.string   "job_city"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["basic_salary"], name: "index_users_on_basic_salary", using: :btree
  add_index "users", ["boss_id"], name: "index_users_on_boss_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["gender"], name: "index_users_on_gender", using: :btree
  add_index "users", ["marital_status"], name: "index_users_on_marital_status", using: :btree
  add_index "users", ["qualification"], name: "index_users_on_qualification", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "company_name"
    t.string   "person_name"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "assets", "asset_categories"
  add_foreign_key "equipments", "vendors"
  add_foreign_key "products", "product_categories"
  add_foreign_key "raw_materials", "raw_material_categories"
  add_foreign_key "raw_materials", "vendors"
end
