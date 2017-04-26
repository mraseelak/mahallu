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

ActiveRecord::Schema.define(version: 20170426005329) do

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.decimal  "age"
    t.boolean  "head"
    t.decimal  "members"
    t.string   "street"
    t.string   "town"
    t.string   "state"
    t.string   "pin"
    t.integer  "mosque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.index ["mosque_id"], name: "index_families_on_mosque_id"
  end

  create_table "mosques", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "town"
    t.string   "state"
    t.string   "pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.string   "email"
  end

  create_table "secretaries", force: :cascade do |t|
    t.string   "name"
    t.integer  "family_id"
    t.integer  "mosque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.index ["family_id"], name: "index_secretaries_on_family_id"
    t.index ["mosque_id"], name: "index_secretaries_on_mosque_id"
  end

end
