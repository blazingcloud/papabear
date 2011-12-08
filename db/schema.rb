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

ActiveRecord::Schema.define(:version => 20111208175148) do

  create_table "field_of_origins", :force => true do |t|
    t.string   "glocode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hives", :force => true do |t|
    t.integer  "field_of_origin_id"
    t.string   "bee_species"
    t.datetime "last_maintained"
    t.datetime "last_harvest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hives", ["field_of_origin_id"], :name => "index_hives_on_field_of_origin_id"

  create_table "honeys", :force => true do |t|
    t.string   "name"
    t.datetime "harvested_at"
    t.integer  "hive_id"
    t.integer  "volume_in_ml"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "honeys", ["hive_id"], :name => "index_honeys_on_hive_id"

end
