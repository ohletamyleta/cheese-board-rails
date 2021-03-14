# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_14_150129) do

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "texture"
    t.text "notes"
    t.integer "style_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "style"
    t.index ["style_id"], name: "index_cheeses_on_style_id"
    t.index ["user_id"], name: "index_cheeses_on_user_id"
  end

  create_table "pairings", force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "cheese_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cheese_id"], name: "index_pairings_on_cheese_id"
    t.index ["wine_id"], name: "index_pairings_on_wine_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "blocks"
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.integer "cheese_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cheese_id"], name: "index_reviews_on_cheese_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
    t.string "provider"
  end

  create_table "wines", force: :cascade do |t|
    t.string "varietal"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cheeses", "users"
  add_foreign_key "pairings", "cheeses"
  add_foreign_key "pairings", "wines"
  add_foreign_key "reviews", "cheeses"
  add_foreign_key "reviews", "users"
end
