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

ActiveRecord::Schema.define(version: 20210123154117) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "news_item_id"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["news_item_id"], name: "index_comments_on_news_item_id"
  end

  create_table "news_items", force: :cascade do |t|
    t.integer  "news_site_id",  null: false
    t.string   "title",         null: false
    t.string   "category",      null: false
    t.text     "thumbnail_url"
    t.text     "description",   null: false
    t.text     "link",          null: false
    t.datetime "published_at",  null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["category"], name: "index_news_items_on_category"
    t.index ["link"], name: "index_news_items_on_link", unique: true
    t.index ["news_site_id"], name: "index_news_items_on_news_site_id"
    t.index ["published_at"], name: "index_news_items_on_published_at"
  end

  create_table "news_sites", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "rss_url",    null: false
    t.string   "category",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rss_url"], name: "index_news_sites_on_rss_url", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.text     "description"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
