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

ActiveRecord::Schema.define(:version => 20131029032401) do

  create_table "armadillos", :force => true do |t|
    t.string   "name"
    t.string   "codename"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "entry_id",   :null => false
    t.string   "name"
  end

  create_table "entries", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title",      :null => false
    t.text     "body",       :null => false
  end

  create_table "things", :force => true do |t|
    t.string   "name"
    t.datetime "birthday"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tweeters", :force => true do |t|
    t.string   "handle"
    t.string   "emotion"
    t.string   "polarity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tweets", :force => true do |t|
    t.string   "emotion"
    t.string   "polarity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tweeter_id"
  end

end
