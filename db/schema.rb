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

ActiveRecord::Schema.define(version: 20160609025636) do

  create_table "blog_post_comments", force: :cascade do |t|
    t.text    "content",           limit: 65535
    t.integer "blog_post_id",      limit: 4
    t.integer "user_id",           limit: 4
    t.integer "parent_comment_id", limit: 4
  end

  add_index "blog_post_comments", ["blog_post_id"], name: "fk_rails_36823fef8e", using: :btree

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title",                   limit: 255
    t.integer  "user_id",                 limit: 4,   null: false
    t.integer  "category_id",             limit: 4,   null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "background_file_name",    limit: 255
    t.string   "background_content_type", limit: 255
    t.integer  "background_file_size",    limit: 4
    t.datetime "background_updated_at"
  end

  create_table "blog_posts_categories", force: :cascade do |t|
    t.integer "blog_post_id", limit: 4
    t.integer "category_id",  limit: 4
  end

  add_index "blog_posts_categories", ["blog_post_id"], name: "index_blog_posts_categories_on_blog_post_id", using: :btree
  add_index "blog_posts_categories", ["category_id"], name: "index_blog_posts_categories_on_category_id", using: :btree

  create_table "blog_posts_para_tags", force: :cascade do |t|
    t.integer "blog_post_id", limit: 4
    t.integer "para_tag_id",  limit: 4
  end

  add_index "blog_posts_para_tags", ["blog_post_id"], name: "index_blog_posts_para_tags_on_blog_post_id", using: :btree
  add_index "blog_posts_para_tags", ["para_tag_id"], name: "index_blog_posts_para_tags_on_para_tag_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "para_comments", force: :cascade do |t|
    t.text    "content",           limit: 65535
    t.integer "paragraph_id",      limit: 4
    t.integer "parent_comment_id", limit: 4
    t.integer "user_id",           limit: 4
  end

  add_index "para_comments", ["paragraph_id"], name: "fk_rails_54a41c958f", using: :btree

  create_table "para_contents", force: :cascade do |t|
    t.text    "content",      limit: 65535
    t.integer "paragraph_id", limit: 4
  end

  add_index "para_contents", ["paragraph_id"], name: "fk_rails_3520e4023c", using: :btree

  create_table "para_tags", force: :cascade do |t|
    t.string "name",        limit: 255
    t.text   "description", limit: 65535
  end

  create_table "para_titles", force: :cascade do |t|
    t.text    "content",      limit: 65535
    t.integer "paragraph_id", limit: 4
  end

  add_index "para_titles", ["paragraph_id"], name: "fk_rails_b11b2f7051", using: :btree

  create_table "paragraphs", force: :cascade do |t|
    t.text     "content",       limit: 65535
    t.integer  "blog_post_id",  limit: 4
    t.integer  "post_style_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "paragraphs", ["blog_post_id"], name: "fk_rails_2df2907372", using: :btree
  add_index "paragraphs", ["post_style_id"], name: "fk_rails_a5bf37d61e", using: :btree

  create_table "post_button_links", force: :cascade do |t|
    t.string   "color",             limit: 255
    t.string   "url",               limit: 255
    t.integer  "blog_post_id",      limit: 4
    t.string   "icon_file_name",    limit: 255
    t.string   "icon_content_type", limit: 255
    t.integer  "icon_file_size",    limit: 4
    t.datetime "icon_updated_at"
  end

  add_index "post_button_links", ["blog_post_id"], name: "fk_rails_3fe0a613b8", using: :btree

  create_table "post_styles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "codename",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "show_types", force: :cascade do |t|
    t.string "name",        limit: 255
    t.text   "description", limit: 65535
    t.string "codename",    limit: 255
  end

  create_table "title_additions", force: :cascade do |t|
    t.text    "content",       limit: 65535
    t.integer "para_title_id", limit: 4
    t.integer "show_type_id",  limit: 4
  end

  add_index "title_additions", ["para_title_id"], name: "fk_rails_c69e58c8bc", using: :btree
  add_index "title_additions", ["show_type_id"], name: "fk_rails_3906cdf177", using: :btree

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
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "blog_post_comments", "blog_posts"
  add_foreign_key "para_comments", "paragraphs"
  add_foreign_key "para_contents", "paragraphs"
  add_foreign_key "para_titles", "paragraphs"
  add_foreign_key "paragraphs", "blog_posts"
  add_foreign_key "paragraphs", "post_styles"
  add_foreign_key "post_button_links", "blog_posts"
  add_foreign_key "title_additions", "para_titles"
  add_foreign_key "title_additions", "show_types"
end
