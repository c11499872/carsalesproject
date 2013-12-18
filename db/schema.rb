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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131217214230) do

  create_table "cars", :force => true do |t|
    t.integer  "seller_id"
    t.string   "make"
    t.string   "model"
    t.integer  "price"
    t.string   "image"
    t.string   "colour"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.date     "date_of_registration"
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cart_id"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "car_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.integer  "amount"
    t.integer  "number",     :default => 1
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "car_id"
    t.integer  "user_id"
    t.date     "dateordered"
    t.integer  "daysremaining"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "address"
    t.string   "name"
    t.string   "paymentmethod"
    t.string   "email"
  end

  create_table "sellers", :force => true do |t|
    t.string   "name"
    t.string   "credit"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "email_digest"
    t.string   "emailadd"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "paymentmethod"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
