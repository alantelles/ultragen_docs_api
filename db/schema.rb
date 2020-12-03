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

ActiveRecord::Schema.define(version: 2020_12_02_033411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doc_entries", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "topic_id", null: false
    t.bigint "version_id", null: false
    t.string "abstract", limit: 255
    t.text "content"
    t.integer "chapter"
    t.integer "old_topic_autoref"
    t.integer "old_doc_autoref"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.index ["language_id"], name: "index_doc_entries_on_language_id"
    t.index ["topic_id"], name: "index_doc_entries_on_topic_id"
    t.index ["version_id"], name: "index_doc_entries_on_version_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.text "metadata"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
  end

  create_table "versions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "github_tag"
    t.text "changelog"
  end

  add_foreign_key "doc_entries", "languages"
  add_foreign_key "doc_entries", "topics"
  add_foreign_key "doc_entries", "versions"
end
