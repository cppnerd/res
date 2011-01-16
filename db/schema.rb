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

ActiveRecord::Schema.define(:version => 20110116033608) do

  create_table "airports", :force => true do |t|
    t.string   "code"
    t.boolean  "active",     :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
  end

  create_table "countries", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 200, :default => "", :null => false
  end

  create_table "flights", :force => true do |t|
    t.integer  "number"
    t.string   "origin"
    t.string   "destination"
    t.boolean  "active",      :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "departure"
    t.time     "arrival"
  end

  create_table "itineraries", :force => true do |t|
    t.integer  "guest_id"
    t.integer  "flight_id"
    t.date     "date"
    t.string   "confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string "name", :limit => 32, :null => false
    t.string "abbr", :limit => 8
  end

end
