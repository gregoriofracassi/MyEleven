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

ActiveRecord::Schema.define(version: 2020_02_01_181236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "eleven_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eleven_id"], name: "index_comments_on_eleven_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "elevens", force: :cascade do |t|
    t.integer "formation"
    t.bigint "user_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_elevens_on_team_id"
    t.index ["user_id"], name: "index_elevens_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "preferred_pos"
    t.string "preferred_foot"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "stars"
    t.bigint "eleven_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eleven_id"], name: "index_ratings_on_eleven_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "startings", force: :cascade do |t|
    t.string "position"
    t.bigint "player_id"
    t.bigint "eleven_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eleven_id"], name: "index_startings_on_eleven_id"
    t.index ["player_id"], name: "index_startings_on_player_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "coach"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "elevens"
  add_foreign_key "comments", "users"
  add_foreign_key "elevens", "teams"
  add_foreign_key "elevens", "users"
  add_foreign_key "players", "teams"
  add_foreign_key "ratings", "elevens"
  add_foreign_key "ratings", "users"
  add_foreign_key "startings", "elevens"
  add_foreign_key "startings", "players"
end
