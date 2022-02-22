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

ActiveRecord::Schema[7.0].define(version: 2022_02_22_132009) do
  create_table "batches", charset: "latin1", force: :cascade do |t|
    t.string "batch_number"
    t.integer "product_id"
    t.string "batch_code"
    t.string "mfg_date"
    t.string "expiry_date"
    t.decimal "mrp", precision: 10
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_users", charset: "latin1", force: :cascade do |t|
    t.integer "client_id"
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.integer "designation"
    t.string "employee_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "clients", charset: "latin1", force: :cascade do |t|
    t.string "client_name"
    t.string "email"
    t.string "address_one"
    t.string "address_two"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "countries", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "importers", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketers", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "address_one"
    t.string "address_two"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "latin1", force: :cascade do |t|
    t.integer "category_id"
    t.integer "sub_category_id"
    t.string "name"
    t.string "code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", charset: "latin1", force: :cascade do |t|
    t.integer "country_id"
    t.string "name"
    t.string "code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", charset: "latin1", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.string "code"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
