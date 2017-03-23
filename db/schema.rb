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

ActiveRecord::Schema.define(version: 20170322164012) do

  create_table "products", force: :cascade do |t|
    t.string   "product_id"
    t.string   "product_name"
    t.integer  "product_price"
    t.integer  "product_stock"
    t.string   "date_delivered"
    t.string   "supplier"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "delivery_date"
  end

  create_table "sales", force: :cascade do |t|
    t.string   "item_ordered"
    t.integer  "ordered_price"
    t.integer  "number_of_items"
    t.integer  "ordered_amount"
    t.integer  "ordered_total"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "supplier_name"
    t.string   "supplier_address"
    t.string   "supplier_manager"
    t.integer  "contact_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
