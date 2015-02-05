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

ActiveRecord::Schema.define(version: 20150205023501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: true do |t|
    t.string   "scales_from"
    t.string   "key"
    t.string   "name"
    t.text     "description"
    t.integer  "abilitable_id"
    t.string   "abilitable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "champions", force: true do |t|
    t.string   "name"
    t.text     "lore"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "loadingart_file_name"
    t.string   "loadingart_content_type"
    t.integer  "loadingart_file_size"
    t.datetime "loadingart_updated_at"
    t.string   "primary_damage_type"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

end
