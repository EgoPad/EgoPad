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

ActiveRecord::Schema.define(:version => 20101130200246) do

  create_table "ccategories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "FIO"
    t.string   "adress"
    t.string   "phone"
    t.string   "e_mail"
    t.string   "web_page"
    t.integer  "contactscategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ccategory_id"
  end

  create_table "ncategories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "note_tasks", :force => true do |t|
    t.integer  "task_id"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "content"
    t.boolean  "sharable"
    t.integer  "notescategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ncategory_id"
  end

  create_table "task_contacts", :force => true do |t|
    t.integer  "task_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.date     "time_limit"
    t.text     "description"
    t.boolean  "active"
    t.integer  "taskscategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tcategory_id"
  end

  create_table "tcategories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
