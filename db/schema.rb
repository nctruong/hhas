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

ActiveRecord::Schema.define(version: 20150117072229) do

  create_table "albums", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "cover",       limit: 255
    t.boolean  "isHomePage",  limit: 1,     default: false
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "appconfigs", force: :cascade do |t|
    t.string   "key",        limit: 255
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "article_categories", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.text     "description",         limit: 65535
    t.integer  "article_category_id", limit: 4
    t.integer  "weight",              limit: 4
    t.boolean  "visible",             limit: 1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "article_categories", ["article_category_id"], name: "index_article_categories_on_article_category_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.text     "description",         limit: 65535
    t.text     "content",             limit: 65535
    t.string   "thumb",               limit: 255
    t.datetime "publishdate"
    t.integer  "article_category_id", limit: 4
    t.boolean  "visible",             limit: 1,     default: true
    t.boolean  "isHomePage",          limit: 1,     default: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "articles", ["article_category_id"], name: "index_articles_on_article_category_id", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.integer  "status",     limit: 4,     default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "title",       limit: 255
    t.string   "thumb",       limit: 255
    t.text     "description", limit: 65535
    t.text     "content",     limit: 65535
    t.integer  "weight",      limit: 4,     default: 0
    t.boolean  "isHomePage",  limit: 1,     default: false
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.boolean  "visible",     limit: 1,     default: true
    t.integer  "menu_id",     limit: 4
    t.integer  "weight",      limit: 4,     default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "menus", ["menu_id"], name: "index_menus_on_menu_id", using: :btree

  create_table "opentimes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.time     "open"
    t.time     "close"
    t.boolean  "isClosed",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "file",        limit: 255
    t.integer  "album_id",    limit: 4
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "pictures", ["album_id"], name: "index_pictures_on_album_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.string   "datetime",   limit: 255
    t.boolean  "isFlexible", limit: 1,     default: false
    t.text     "message",    limit: 65535
    t.integer  "status",     limit: 4,     default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "content",     limit: 65535
    t.string   "thumb",       limit: 255
    t.integer  "oldprice",    limit: 4
    t.integer  "newprice",    limit: 4
    t.boolean  "isHomePage",  limit: 1,     default: false
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.boolean  "visible",     limit: 1,     default: true
    t.integer  "weight",      limit: 4,     default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "social_icons", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "clss",       limit: 255
    t.string   "link",       limit: 255, default: "#"
    t.boolean  "visible",    limit: 1
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.boolean  "visible",    limit: 1,     default: true
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "role",                   limit: 4,   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "article_categories", "article_categories"
  add_foreign_key "articles", "article_categories"
  add_foreign_key "menus", "menus"
  add_foreign_key "pictures", "albums"
end
