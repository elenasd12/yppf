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

ActiveRecord::Schema.define(version: 20160323055844) do

  create_table "bills", force: :cascade do |t|
    t.integer  "day_month"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.decimal  "amount"
    t.integer  "expire_month"
    t.integer  "expire_year"
  end

  add_index "bills", ["user_id"], name: "index_bills_on_user_id"

  create_table "expense_categories", force: :cascade do |t|
    t.string   "exp_name"
    t.integer  "exp_parent"
    t.text     "exp_description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "expense_details", force: :cascade do |t|
    t.datetime "expdet_date"
    t.decimal  "expdate_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "expense_id"
  end

  create_table "expenses", force: :cascade do |t|
    # bill or non bill (0 or 1)
    t.integer  "expensetype"
    t.text     "frequency"
    t.decimal  "projvalue"
    t.decimal  "actvalue"
    t.integer  "percent"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "bill_id"
    t.integer  "expense_category_id"
  end

  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id"

  create_table "incomes", force: :cascade do |t|
    t.text     "income"
    t.text     "incometype"
    t.decimal  "value"
    t.text     "frequency"
    t.integer  "day_rec"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "incomes", ["user_id"], name: "index_incomes_on_user_id"

  create_table "listofvalues", force: :cascade do |t|
    t.string   "lov_domain"
    t.integer  "lov_key"
    t.string   "lov_value"
    t.text     "lov_description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
