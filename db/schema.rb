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

ActiveRecord::Schema.define(version: 20140123093922) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.string   "title"
    t.integer  "season_id"
    t.integer  "number"
    t.boolean  "watched"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "duration"
    t.boolean  "favorite"
  end

  create_table "genres", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "series_id"
  end

  create_table "series", force: true do |t|
    t.string   "title"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "extension"
    t.boolean  "favorite"
    t.integer  "year"
    t.integer  "country_id"
  end

end
