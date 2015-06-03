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

ActiveRecord::Schema.define(version: 20140610024842) do

  create_table "categories", force: true do |t|
    t.string   "m_name"
    t.integer  "m_status",   default: 0
    t.integer  "parent_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "m_name"
    t.boolean  "m_is_cover"
    t.integer  "m_display_number"
    t.integer  "category_id"
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.string   "image_uid"
    t.string   "image_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "m_name"
    t.text     "m_description"
    t.integer  "m_status",                               default: 0
    t.decimal  "m_price",       precision: 10, scale: 0
    t.integer  "m_sale_price"
    t.integer  "m_weight"
    t.integer  "m_length"
    t.integer  "m_width"
    t.integer  "m_height"
    t.text     "m_attributes"
    t.integer  "m_visibility",                           default: 1
    t.integer  "parent_id"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "m_username"
    t.string   "m_first_name"
    t.string   "m_last_name"
    t.integer  "m_product_limit"
    t.integer  "m_user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
