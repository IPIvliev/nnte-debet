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

ActiveRecord::Schema.define(:version => 20130531161301) do

  create_table "agents", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "e_mail"
    t.string   "predsedatel"
    t.string   "predsedatel_phone"
    t.string   "buhgalter"
    t.string   "buhgalter_phone"
    t.text     "primechanie"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "delos", :force => true do |t|
    t.integer  "agent_id"
    t.date     "start_date"
    t.integer  "sum"
    t.boolean  "finish"
    t.integer  "ilist_id"
    t.integer  "dolg_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dogovors", :force => true do |t|
    t.string   "number"
    t.integer  "agent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "date"
  end

  create_table "dolgs", :force => true do |t|
    t.integer  "dogovor_id"
    t.integer  "sum"
    t.string   "period"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "month"
  end

  create_table "houses", :force => true do |t|
    t.string   "street"
    t.string   "number"
    t.integer  "agent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ilists", :force => true do |t|
    t.string   "number"
    t.integer  "pristav_id"
    t.string   "sum"
    t.date     "date"
    t.boolean  "finish"
    t.string   "period"
    t.integer  "dolg_id"
    t.integer  "agent_id"
    t.integer  "delo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "obzvons", :force => true do |t|
    t.integer  "agent_id"
    t.datetime "phone_date"
    t.date     "repeat"
    t.string   "answer"
    t.integer  "rezult"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pristavs", :force => true do |t|
    t.string   "fio"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proplatis", :force => true do |t|
    t.integer  "sum"
    t.date     "date"
    t.integer  "dogovor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
