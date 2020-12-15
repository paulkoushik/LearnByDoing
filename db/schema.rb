# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_14_143117) do

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "topics_id", null: false
    t.integer "courses_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["courses_id"], name: "index_line_items_on_courses_id"
    t.index ["topics_id"], name: "index_line_items_on_topics_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "topics_title"
    t.string "content"
    t.text "description"
    t.decimal "duration"
    t.string "image_url"
    t.string "demonstrator"
    t.decimal "package_price", precision: 8, scale: 2
    t.string "queries_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "line_items", "courses", column: "courses_id"
  add_foreign_key "line_items", "topics", column: "topics_id"
end
