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

ActiveRecord::Schema.define(version: 20161031201950) do

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bin_collections", force: :cascade do |t|
    t.datetime "collection_date"
    t.decimal  "weight"
    t.boolean  "inspected_for_brm"
    t.boolean  "mqei_submitted"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "airport_id"
  end

  create_table "bin_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brmcollections", force: :cascade do |t|
    t.datetime "collectedon"
    t.decimal  "weight"
    t.boolean  "chopped"
    t.boolean  "mqeisubmitted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "flights", force: :cascade do |t|
    t.date     "date"
    t.string   "plane"
    t.integer  "total_pax"
    t.integer  "total_nc_pax"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "airport_id"
  end

end
