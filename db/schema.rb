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

ActiveRecord::Schema.define(version: 20210103161017) do

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

end
