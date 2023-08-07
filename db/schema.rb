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

ActiveRecord::Schema[7.0].define(version: 2023_08_03_073600) do
  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.integer "music_id"
    t.integer "playlists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_artists_on_music_id"
    t.index ["playlists_id"], name: "index_artists_on_playlists_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "title"
    t.string "avatar"
    t.string "genre"
    t.string "album"
    t.string "video"
    t.integer "playlists_id"
    t.integer "users_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_musics_on_artist_id"
    t.index ["playlists_id"], name: "index_musics_on_playlists_id"
    t.index ["users_id"], name: "index_musics_on_users_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recommendations_on_user_id"
  end

  create_table "search_histories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "query"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_search_histories_on_user_id"
  end

  create_table "shares", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "platform"
    t.string "share_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shares_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token"
    t.index ["authentication_token"], name: "index_users_on_authentication_token"
  end

  add_foreign_key "artists", "musics"
  add_foreign_key "artists", "playlists", column: "playlists_id"
  add_foreign_key "musics", "artists"
  add_foreign_key "musics", "playlists", column: "playlists_id"
  add_foreign_key "musics", "users", column: "users_id"
  add_foreign_key "recommendations", "users"
  add_foreign_key "search_histories", "users"
  add_foreign_key "shares", "users"
end
