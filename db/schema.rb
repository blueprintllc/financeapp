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

ActiveRecord::Schema.define(:version => 20100916210859) do

  create_table "ideas", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stock_id"
    t.string   "title"
    t.text     "description"
    t.string   "ptarget"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "label_values", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.string   "ticker"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threaded_comments", :force => true do |t|
    t.string   "name",                              :default => ""
    t.text     "body"
    t.integer  "rating",                            :default => 0
    t.integer  "flags",                             :default => 0
    t.integer  "parent_id",                         :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                             :default => ""
    t.boolean  "notifications",                     :default => true
    t.integer  "threaded_comment_polymorphic_id"
    t.string   "threaded_comment_polymorphic_type"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
