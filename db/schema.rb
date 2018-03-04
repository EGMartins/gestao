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

ActiveRecord::Schema.define(version: 20180224133200) do

  create_table "expenses", force: :cascade do |t|
    t.string   "date",                  limit: 50,                          null: false
    t.decimal  "energy",                           precision: 10, scale: 2
    t.decimal  "wather",                           precision: 10, scale: 2
    t.decimal  "for_rent",                         precision: 10, scale: 2
    t.decimal  "internet",                         precision: 10, scale: 2
    t.decimal  "phone",                            precision: 10, scale: 2
    t.decimal  "safety",                           precision: 10, scale: 2
    t.decimal  "store",                            precision: 10, scale: 2
    t.decimal  "donation",                         precision: 10, scale: 2
    t.decimal  "cleaning",                         precision: 10, scale: 2
    t.decimal  "hp",                               precision: 10, scale: 2
    t.decimal  "bazaar",                           precision: 10, scale: 2
    t.decimal  "stationary",                       precision: 10, scale: 2
    t.decimal  "cost_with_consultants",            precision: 10, scale: 2
    t.decimal  "healing_house",                    precision: 10, scale: 2
    t.decimal  "food",                             precision: 10, scale: 2
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "date",           limit: 50,                          null: false
    t.decimal  "canteen_money",             precision: 10, scale: 2
    t.decimal  "canteen_card",              precision: 10, scale: 2
    t.decimal  "store_money",               precision: 10, scale: 2
    t.decimal  "store_card",                precision: 10, scale: 2
    t.decimal  "raffle_money",              precision: 10, scale: 2
    t.decimal  "raffle_card",               precision: 10, scale: 2
    t.decimal  "donation_money",            precision: 10, scale: 2
    t.decimal  "donation_card",             precision: 10, scale: 2
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "solidarities", force: :cascade do |t|
    t.string   "name",       limit: 100
    t.decimal  "money",                  precision: 10, scale: 2
    t.decimal  "card",                   precision: 10, scale: 2
    t.integer  "recipe_id"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "solidarities", ["recipe_id"], name: "index_solidarities_on_recipe_id"

end
