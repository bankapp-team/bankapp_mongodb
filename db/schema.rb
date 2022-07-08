# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_05_065851) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account", primary_key: "accountnum", id: :integer, default: nil, force: :cascade do |t|
    t.integer "customerid", null: false
    t.string "accounttype", limit: 10, null: false
    t.money "balance", scale: 2, null: false
    t.string "ifsc", limit: 12, null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "accountnum"
    t.integer "customerid"
    t.string "accounttype"
    t.decimal "balance"
    t.string "ifsc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank", primary_key: "ifsc", id: { type: :string, limit: 12 }, force: :cascade do |t|
    t.string "bankname", limit: 30, null: false
    t.string "branchname", limit: 30, null: false
    t.string "district", limit: 30, null: false
    t.string "state", limit: 30, null: false
    t.string "address", limit: 50, null: false
    t.integer "pincode", null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "bankname"
    t.string "branchname"
    t.string "ifsc"
    t.string "district"
    t.string "state"
    t.string "address"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer", primary_key: "customerid", id: :integer, default: nil, force: :cascade do |t|
    t.string "fname", limit: 30, null: false
    t.string "ifsc", limit: 12, null: false
    t.string "lname", limit: 30, null: false
    t.string "mobile", limit: 10, null: false
    t.string "pancard", limit: 10, null: false
    t.string "email", limit: 70, null: false
    t.string "district", limit: 30, null: false
    t.string "state", limit: 30, null: false
    t.string "country", limit: 30, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "customerid"
    t.string "fname"
    t.string "ifsc"
    t.string "lname"
    t.string "mobile"
    t.string "pancard"
    t.string "email"
    t.string "district"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "account", "bank", column: "ifsc", primary_key: "ifsc", name: "fk_ifsc"
  add_foreign_key "account", "customer", column: "customerid", primary_key: "customerid", name: "fk_customerid"
  add_foreign_key "customer", "bank", column: "ifsc", primary_key: "ifsc", name: "fk_ifsc"
end