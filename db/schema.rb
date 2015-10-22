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

ActiveRecord::Schema.define(version: 20150929183352) do

  create_table "books", force: :cascade do |t|
    t.string   "title_english"
    t.string   "title_chinese"
    t.integer  "series"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "pinyin"
    t.string   "character"
    t.string   "part_of_speech"
    t.string   "definition"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "highlight_instances", force: :cascade do |t|
    t.string   "character"
    t.integer  "count"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "highlight_instances", ["user_id"], name: "index_highlight_instances_on_user_id"

  create_table "readings", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "book_id"
    t.integer  "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "readings", ["book_id"], name: "index_readings_on_book_id"

  create_table "user_books", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_books", ["book_id"], name: "index_user_books_on_book_id"
  add_index "user_books", ["user_id"], name: "index_user_books_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vocab_list_entries", force: :cascade do |t|
    t.integer  "vocab_list_id"
    t.integer  "entry_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "vocab_list_entries", ["entry_id"], name: "index_vocab_list_entries_on_entry_id"
  add_index "vocab_list_entries", ["vocab_list_id"], name: "index_vocab_list_entries_on_vocab_list_id"

  create_table "vocab_lists", force: :cascade do |t|
    t.string   "title"
    t.integer  "book_id"
    t.integer  "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vocab_lists", ["book_id"], name: "index_vocab_lists_on_book_id"

end
