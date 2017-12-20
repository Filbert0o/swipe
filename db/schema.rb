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

ActiveRecord::Schema.define(version: 20171220134531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account_id", null: false
    t.string "mask", null: false
    t.string "name", null: false
    t.string "official_name", null: false
    t.string "subtype", null: false
    t.string "maintype", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "balances", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.float "available"
    t.float "current"
    t.float "limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_balances_on_account_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "purchase_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_groups_on_category_id"
    t.index ["purchase_id"], name: "index_groups_on_purchase_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "purchase_id", null: false
    t.string "address"
    t.string "city"
    t.string "lat"
    t.string "lon"
    t.string "state"
    t.string "store_number"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_locations_on_purchase_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "purchase_id", null: false
    t.string "by_order_of"
    t.string "payee"
    t.string "payer"
    t.string "payment_method"
    t.string "payment_processor"
    t.string "ppd_id"
    t.string "reason"
    t.string "reference_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_id"], name: "index_payments_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.string "account_owner"
    t.float "amount", null: false
    t.string "category_id"
    t.string "transaction_date", null: false
    t.string "name", null: false
    t.boolean "pending"
    t.string "pending_transaction_id"
    t.string "transaction_id", null: false
    t.string "transaction_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_purchases_on_account_id"
  end

end
