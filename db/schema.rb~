# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090930103329) do

  create_table "movies", :force => true do |t|
    t.string  "title",              :limit => 60, :null => false
    t.date    "date",                             :null => false
    t.time    "time",                             :null => false
    t.integer "duration",                         :null => false
    t.text    "picture_url",                      :null => false
    t.integer "room_id",                          :null => false
    t.string  "photo_file_name"
    t.string  "photo_content_type"
    t.integer "photo_file_size"
  end

  add_index "movies", ["id"], :name => "id", :unique => true
  add_index "movies", ["id"], :name => "id_2"
  add_index "movies", ["room_id"], :name => "rooms_id"

  create_table "rooms", :force => true do |t|
    t.text "name", :null => false
  end

end
