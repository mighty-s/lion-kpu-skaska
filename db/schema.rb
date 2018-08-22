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

ActiveRecord::Schema.define(version: 20180821142859) do

  create_table "comment_notices", force: :cascade do |t|
    t.integer "notice_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_comment_notices_on_notice_id"
    t.index ["user_id"], name: "index_comment_notices_on_user_id"
  end

  create_table "comment_recipes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notices_on_user_id"
  end

  create_table "recipe_images", force: :cascade do |t|
    t.integer "recipes_id"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipes_id"], name: "index_recipe_images_on_recipes_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "hash_tag"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "nickname"
    t.string "name"
    t.string "phone"
    t.string "gender"
    t.string "grade"
    t.string "status", default: "normal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
