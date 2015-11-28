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

ActiveRecord::Schema.define(version: 20151128015003) do

  create_table "direct_costs", force: :cascade do |t|
    t.float    "amount"
    t.string   "category_name"
    t.string   "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indirect_costs", force: :cascade do |t|
    t.string   "project_id"
    t.float    "profit"
    t.float    "sga"
    t.float    "rd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "industry_comparable_id"
    t.float    "indirect_costs"
    t.float    "direct_costs"
    t.integer  "gap_dollar"
    t.integer  "gap_percent"
    t.integer  "should_cost"
    t.integer  "actual_cost"
    t.string   "industry"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "rd"
    t.float    "sga"
    t.float    "profit"
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
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
