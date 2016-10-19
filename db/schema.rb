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

ActiveRecord::Schema.define(version: 20161019135010) do

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

  create_table "attendances", id: false, force: :cascade do |t|
    t.datetime "time_in"
    t.datetime "time_out"
    t.boolean  "on_leave"
    t.text     "leave_reason"
    t.integer  "approved_by"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "attendances", ["time_in"], name: "index_attendances_on_time_in", using: :btree
  add_index "attendances", ["time_out"], name: "index_attendances_on_time_out", using: :btree
  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id", using: :btree

  create_table "bank_accounts", force: :cascade do |t|
    t.string   "account_title"
    t.string   "account_number"
    t.string   "iban"
    t.integer  "balance"
    t.string   "bank_name"
    t.string   "branch_name"
    t.string   "branch_address"
    t.string   "branch_city"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bank_accounts", ["user_id"], name: "index_bank_accounts_on_user_id", using: :btree

  create_table "bank_transactions", force: :cascade do |t|
    t.integer  "bank_account_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.integer  "transaction_type"
    t.string   "check_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "bank_transactions", ["bank_account_id"], name: "index_bank_transactions_on_bank_account_id", using: :btree
  add_index "bank_transactions", ["user_id"], name: "index_bank_transactions_on_user_id", using: :btree

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

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.string   "make"
    t.string   "model"
    t.string   "company"
    t.string   "price"
    t.string   "capacity"
    t.string   "life"
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "equipment", ["vendor_id"], name: "index_equipment_on_vendor_id", using: :btree

  create_table "equipment_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

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

  create_table "order_products", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
    t.integer "price_per_unit"
    t.integer "total_price"
  end

  add_index "order_products", ["order_id"], name: "index_order_products_on_order_id", using: :btree
  add_index "order_products", ["product_id"], name: "index_order_products_on_product_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "user_id"
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_ingrediants", force: :cascade do |t|
    t.integer  "raw_material_id"
    t.integer  "product_id"
    t.string   "unit"
    t.integer  "quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "product_ingrediants", ["product_id"], name: "index_product_ingrediants_on_product_id", using: :btree
  add_index "product_ingrediants", ["raw_material_id"], name: "index_product_ingrediants_on_raw_material_id", using: :btree

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

  create_table "raw_material_invoice_items", force: :cascade do |t|
    t.integer  "quantity"
    t.string   "unit"
    t.integer  "price"
    t.integer  "raw_material_id"
    t.integer  "raw_material_invoice_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "raw_material_invoice_items", ["raw_material_id"], name: "index_raw_material_invoice_items_on_raw_material_id", using: :btree
  add_index "raw_material_invoice_items", ["raw_material_invoice_id"], name: "index_raw_material_invoice_items_on_raw_material_invoice_id", using: :btree

  create_table "raw_material_invoices", force: :cascade do |t|
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "raw_material_invoices", ["vendor_id"], name: "index_raw_material_invoices_on_vendor_id", using: :btree

  create_table "raw_materials", force: :cascade do |t|
    t.string   "name"
    t.integer  "raw_material_category_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "raw_materials", ["raw_material_category_id"], name: "index_raw_materials_on_raw_material_category_id", using: :btree

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
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "mobile"
    t.string   "address"
    t.string   "email"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assets", "asset_categories"
  add_foreign_key "attendances", "users"
  add_foreign_key "bank_accounts", "users"
  add_foreign_key "bank_transactions", "bank_accounts"
  add_foreign_key "bank_transactions", "users"
  add_foreign_key "equipment", "vendors"
  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "products"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "users"
  add_foreign_key "product_ingrediants", "products"
  add_foreign_key "product_ingrediants", "raw_materials"
  add_foreign_key "products", "product_categories"
  add_foreign_key "raw_material_invoice_items", "raw_material_invoices"
  add_foreign_key "raw_material_invoice_items", "raw_materials"
  add_foreign_key "raw_material_invoices", "vendors"
  add_foreign_key "raw_materials", "raw_material_categories"
end
