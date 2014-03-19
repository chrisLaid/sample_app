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

ActiveRecord::Schema.define(:version => 20140317142824) do

  create_table "mbtis", :force => true do |t|
    t.string   "typecode"
    t.integer  "user_id"
    t.float    "Sg"
    t.float    "Ng"
    t.float    "Tg"
    t.float    "Fg"
    t.float    "Jg"
    t.float    "Pg"
    t.float    "En"
    t.float    "In"
    t.string   "q1"
    t.string   "q2"
    t.string   "q3"
    t.string   "q4"
    t.string   "q5"
    t.string   "q6"
    t.string   "q7"
    t.string   "q8"
    t.string   "q9"
    t.string   "q10"
    t.string   "q11"
    t.string   "q12"
    t.string   "q13"
    t.string   "q14"
    t.string   "q15"
    t.string   "q16"
    t.string   "q17"
    t.string   "q18"
    t.string   "q19"
    t.string   "q20"
    t.string   "q21"
    t.string   "q22"
    t.string   "q23"
    t.string   "q24"
    t.string   "q25"
    t.string   "q26"
    t.string   "q27"
    t.string   "q28"
    t.string   "q29"
    t.string   "q30"
    t.string   "q31"
    t.string   "q32"
    t.string   "q33"
    t.string   "q34"
    t.string   "q35"
    t.string   "q36"
    t.string   "q37"
    t.string   "q38"
    t.string   "q39"
    t.string   "q40"
    t.string   "q41"
    t.string   "q42"
    t.string   "q43"
    t.string   "q44"
    t.string   "q45"
    t.string   "q46"
    t.string   "q47"
    t.string   "q48"
    t.string   "q49"
    t.string   "q50"
    t.string   "q51"
    t.string   "q52"
    t.string   "q53"
    t.string   "q54"
    t.string   "q55"
    t.string   "q56"
    t.string   "q57"
    t.string   "q58"
    t.string   "q59"
    t.string   "q60"
    t.string   "q61"
    t.string   "q62"
    t.string   "q63"
    t.string   "q64"
    t.string   "q65"
    t.string   "q66"
    t.string   "q67"
    t.string   "q68"
    t.string   "q69"
    t.string   "q70"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mbtis", ["user_id"], :name => "index_mbtis_on_user_id"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
