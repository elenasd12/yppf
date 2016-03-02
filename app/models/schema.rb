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

ActiveRecord::Schema.define(version: 20160224010325) do

  create_table "bills", force: :cascade do |t|
    t.text     "userid"
    t.text     "expenseid"
    t.integer  "day_month"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.text     "expenseid"
    t.text     "userid"
    t.text     "expensetype"
    t.text     "frequency"
    t.decimal  "projvalue"
    t.decimal  "actvalue"
    t.integer  "percent"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.text     "userid"
    t.text     "income"
    t.text     "incometype"
    t.decimal  "value"
    t.text     "frequency"
    t.integer  "day_rec"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "user"
    t.text     "email"
    t.text     "password"
    t.text     "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end