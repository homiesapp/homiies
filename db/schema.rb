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

ActiveRecord::Schema.define(version: 20150915011643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chatrooms", ["event_id"], name: "index_chatrooms_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "postal_code"
    t.datetime "time"
    t.text     "description"
    t.string   "picture"
    t.float    "lat"
    t.float    "long"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "homiie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friendships", ["homiie_id"], name: "index_friendships_on_homiie_id", using: :btree
  add_index "friendships", ["user_id", "homiie_id"], name: "index_friendships_on_user_id_and_homiie_id", unique: true, using: :btree
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "invitations", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "invitee_id"
    t.integer  "inviter_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invitations", ["event_id"], name: "index_invitations_on_event_id", using: :btree
  add_index "invitations", ["invitee_id"], name: "index_invitations_on_invitee_id", using: :btree
  add_index "invitations", ["inviter_id"], name: "index_invitations_on_inviter_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.text     "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "messages", ["chatroom_id"], name: "index_messages_on_chatroom_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "suggestions", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "title"
    t.float    "lat"
    t.float    "long"
    t.float    "rating"
    t.string   "type_place"
    t.string   "photo_req"
    t.string   "web_url"
    t.integer  "vote_counter"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "lat"
    t.float    "long"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "suggestion_id"
    t.integer  "user_id"
    t.boolean  "upvote"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
