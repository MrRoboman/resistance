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

ActiveRecord::Schema.define(version: 20160412202416) do

  create_table "games", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["player_id"], name: "index_members_on_player_id"
  add_index "members", ["team_id"], name: "index_members_on_team_id"

  create_table "mission_votes", force: :cascade do |t|
    t.string   "vote"
    t.integer  "mission_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mission_votes", ["mission_id"], name: "index_mission_votes_on_mission_id"
  add_index "mission_votes", ["player_id"], name: "index_mission_votes_on_player_id"

  create_table "missions", force: :cascade do |t|
    t.integer  "number"
    t.string   "status"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "missions", ["game_id"], name: "index_missions_on_game_id"

  create_table "players", force: :cascade do |t|
    t.integer  "order"
    t.string   "alliance"
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["game_id"], name: "index_players_on_game_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "team_votes", force: :cascade do |t|
    t.string   "vote"
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "team_votes", ["player_id"], name: "index_team_votes_on_player_id"
  add_index "team_votes", ["team_id"], name: "index_team_votes_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.integer  "attempt"
    t.string   "status"
    t.integer  "mission_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["mission_id"], name: "index_teams_on_mission_id"
  add_index "teams", ["user_id"], name: "index_teams_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
