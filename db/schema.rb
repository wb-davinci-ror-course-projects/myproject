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

ActiveRecord::Schema.define(version: 20140316022553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "category_sales", force: true do |t|
    t.string "category_name"
    t.float  "percent_off"
    t.float  "category_id"
  end

  create_table "products", force: true do |t|
    t.string "category"
    t.string "product_code"
    t.string "name"
    t.float  "quantity"
    t.string "description"
    t.string "price"
    t.string "image"
    t.float  "category_id"
    t.string "more_info"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "email_address"
    t.string "password_digest"
    t.string "shipping_address1"
    t.string "shipping_address2"
    t.string "shipping_city"
    t.string "shipping_state"
    t.string "shipping_zip"
    t.string "phone_number"
  end

end
